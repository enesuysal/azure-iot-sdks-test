// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

'use strict';

var anHourFromNow = require('azure-iot-common').anHourFromNow;
var ArgumentError = require('azure-iot-common').errors.ArgumentError;
var ConnectionString = require('./connection_string.js');
var DefaultTransport = require('./registry_http.js');
var Device = require('./device.js');
var endpoint = require('azure-iot-common').endpoint;
var versionQueryString = require('./version_query_string.js');
var SharedAccessSignature = require('./shared_access_signature.js');

/**
 * @class           module:azure-iothub.Registry
 * @classdesc       Constructs a Registry object with the given transport
 *                  object. The Registry class provides access to the IoT Hub
 *                  identity service. Normally, consumers will call one of the
 *                  factory methods, e.g.,
 *                  {@link module:azure-iothub.Registry.fromConnectionString|fromConnectionString},
 *                  to create a Registry object.
 * @param {Object}  transport   An object that implements the interface
 *                              expected of a transport object. See the file
 *                              **node/service/lib/devdoc/http_requirements.docm**
 *                              for information on what the transport object
 *                              should look like. The
 *                              {@link module:azure-iothub.Http|Http} class is
 *                              one such implementation of the transport.
 */
/*Codes_SRS_NODE_IOTHUB_REGISTRY_05_001: [The Registry constructor shall accept a transport object]*/
function Registry(transport) {
  this._transport = transport;
}

/**
 * @method          module:azure-iothub.Registry.fromConnectionString
 * @description     Constructs a Registry object from the given connection
 *                  string using the default transport
 *                  ({@link module:azure-iothub.Http|Http}).
 * @param {String}  value       A connection string which encapsulates the
 *                              appropriate (read and/or write) Registry
 *                              permissions.
 * @returns {module:azure-iothub.Registry}
 */
Registry.fromConnectionString = function fromConnectionString(value, Transport) {
  /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_008: [The fromConnectionString method shall throw ReferenceError if the value argument is falsy.]*/
  if (!value) throw new ReferenceError('value is \'' + value + '\'');

  Transport = Transport || DefaultTransport;

  /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_009: [Otherwise, it shall derive and transform the needed parts from the connection string in order to create a new instance of the default transport (azure-iothub.Http).]*/
  var cn = ConnectionString.parse(value);
  var sas = SharedAccessSignature.create(cn.HostName, cn.SharedAccessKeyName, cn.SharedAccessKey, anHourFromNow());

  var config = {
    host: cn.HostName,
    hubName: cn.HostName.split('.', 1)[0],
    sharedAccessSignature: sas.toString()
  };

  /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_010: [The fromConnectionString method shall return a new instance of the Registry object, as by a call to new Registry(transport).]*/
  return new Registry(new Transport(config));
};

/**
 * @method            module:azure-iothub.Registry.fromSharedAccessSignature
 * @description       Constructs a Registry object from the given shared access
 *                    signature using the default transport
 *                    ({@link module:azure-iothub.Http|Http}).
 * @param {String}    value     A shared access signature which encapsulates
 *                              the appropriate (read and/or write) Registry
 *                              permissions.
 * @returns {module:azure-iothub.Registry}
 */
Registry.fromSharedAccessSignature = function fromSharedAccessSignature(value) {
  /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_011: [The fromSharedAccessSignature method shall throw ReferenceError if the value argument is falsy.]*/
  if (!value) throw new ReferenceError('value is \'' + value + '\'');

  /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_012: [Otherwise, it shall derive and transform the needed parts from the shared access signature in order to create a new instance of the default transport (azure-iothub.Http).]*/
  var sas = SharedAccessSignature.parse(value);

  var config = {
    host: sas.sr,
    hubName: sas.sr.split('.', 1)[0],
    sharedAccessSignature: sas.toString()
  };

  /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_013: [The fromSharedAccessSignature method shall return a new instance of the Registry object, as by a call to new Registry(transport).]*/
  return new Registry(new DefaultTransport(config));
};

/**
 * @method            module:azure-iothub.Registry#create
 * @description       Creates a new device identity on an IoT hub.
 * @param {Object}    deviceInfo  The object must include a `deviceId` property
 *                                with a valid device identifier.
 * @param {Function}  done        The function to call when the operation is
 *                                complete. `done` will be called with three
 *                                arguments: an Error object (can be null), a
 *                                {@link module:azure-iothub.Device|Device}
 *                                object representing the created device
 *                                identity, and a transport-specific response
 *                                object useful for logging or debugging.
 */
Registry.prototype.create = function (deviceInfo, done) {
  /*Codes_SRS_NODE_IOTHUB_REGISTRY_07_001: [The create method shall throw ArgumentError if the first argument does not contain a deviceId property.]*/
  if (!deviceInfo.deviceId) {
    throw new ArgumentError('The object \'deviceInfo\' is missing the property: deviceId');
  }
  else {
    var path = endpoint.devicePath(deviceInfo.deviceId) + versionQueryString();
    this._transport.createDevice(path, deviceInfo, function (err, body, response) {
      /*Codes_SRS_NODE_IOTHUB_REGISTRY_07_002: [When the create method completes, the callback function (indicated by the done argument) shall be invoked with an Error object (may be null), and a Device object representing the new device identity returned from the IoT hub.]*/
      if (err) {
        done(err, null, response);
      } else {
        done(err, new Device(body), response);
      }
    });
  }
};

/**
 * @method            module:azure-iothub.Registry#update
 * @description       Updates an existing device identity on an IoT hub with
 *                    the given device information.
 * @param {Object}    deviceInfo  An object which must include a `deviceId`
 *                                property whose value is a valid device
 *                                identifier.
 * @param {Function}  done        The function to call when the operation is
 *                                complete. `done` will be called with three
 *                                arguments: an Error object (can be null), a
 *                                {@link module:azure-iothub.Device|Device}
 *                                object representing the updated device
 *                                identity, and a transport-specific response
 *                                object useful for logging or debugging.
 */
Registry.prototype.update = function (deviceInfo, done) {
  /* Codes_SRS_NODE_IOTHUB_REGISTRY_07_003: [The update method shall throw ArgumentError if the first argument does not contain a deviceId property.]*/
  if (!deviceInfo.deviceId) {
    throw new ArgumentError('The object \'deviceInfo\' is missing the property: deviceId');
  }

  var path = endpoint.devicePath(deviceInfo.deviceId) + versionQueryString();
  this._transport.updateDevice(path, deviceInfo, function (err, body, response) {
    /*Codes_SRS_NODE_IOTHUB_REGISTRY_07_004: [When the update method completes, the callback function (indicated by the done argument) shall be invoked with an Error object (may be null), and a Device object representing the new device identity returned from the IoT hub.]*/
    if (err) {
      deviceInfo = undefined;
    }
    else if (body) {
      deviceInfo = new Device(body);
    }
    done(err, deviceInfo, response);
  });
};

/**
 * @method            module:azure-iothub.Registry#get
 * @description       Requests information about an existing device identity
 *                    on an IoT hub.
 * @param {String}    deviceId    The identifier of an existing device identity.
 * @param {Function}  done        The function to call when the operation is
 *                                complete. `done` will be called with three
 *                                arguments: an Error object (can be null), a
 *                                {@link module:azure-iothub.Device|Device}
 *                                object representing the created device
 *                                identity, and a transport-specific response
 *                                object useful for logging or debugging.
 */
Registry.prototype.get = function (deviceId, done) {
  /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_006: [The get method shall throw ReferenceError if the supplied deviceId is falsy.]*/
  if (!deviceId) {
    throw new ReferenceError('deviceId is \'' + deviceId + '\'');
  }

  /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_002: [The get method shall request metadata for the device (indicated by the deviceId argument) from an IoT hub’s identity service via the transport associated with the Registry instance.]*/
  var path = endpoint.devicePath(deviceId) + versionQueryString();
  this._transport.getDevice(path, function (err, body, response) {
    /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_003: [When the get method completes, the callback function (indicated by the done argument) shall be invoked with the same arguments as the underlying transport method’s callback, plus a Device object representing the device information returned from IoT Hub.]*/
    var dev;
    if (body) {
      dev = new Device(body);
    }
    done(err, dev, response);
  });
};

/**
 * @method            module:azure-iothub.Registry#list
 * @description       Requests information about the first 1000 device
 *                    identities on an IoT hub.
 * @param {Function}  done        The function to call when the operation is
 *                                complete. `done` will be called with three
 *                                arguments: an Error object (can be null), an
 *                                array of
 *                                {@link module:azure-iothub.Device|Device}
 *                                objects representing the listed device
 *                                identities, and a transport-specific response
 *                                object useful for logging or debugging.
 */
Registry.prototype.list = function (done) {
  var path = endpoint.devicePath('') + versionQueryString();
  /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_004: [The list method shall request information about devices from an IoT hub’s identity service via the transport associated with the Registry instance.]*/
  this._transport.listDevices(path, function (err, body, response) {
    if (err) {
      done(err);
    } else {
      /*Codes_SRS_NODE_IOTHUB_REGISTRY_07_006: [The JSON array returned from the service shall be converted to a list of Device objects.]*/
      var sourceArray = JSON.parse(body);
      var devList = createDeviceArray(sourceArray);
      /*Codes_SRS_NODE_IOTHUB_REGISTRY_07_005: [When the list method completes, the callback function (indicated by the done argument) shall be invoked with an Error object (may be null), and an array of Device objects representing up to 1000 devices from the IoT hub.]*/
      done(err, devList, response);
    }
  });
};

/**
 * @method            module:azure-iothub.Registry#delete
 * @description       Removes an existing device identity from an IoT hub.
 * @param {String}    deviceId    The identifier of an existing device identity.
 * @param {Function}  done        The function to call when the operation is
 *                                complete. `done` will be called with three
 *                                arguments: an Error object (can be null), an
 *                                always-null argument (for consistency with
 *                                the other methods), and a transport-specific
 *                                response object useful for logging or
 *                                debugging.
 */
Registry.prototype.delete = function (deviceId, done) {
  /*Codes_SRS_NODE_IOTHUB_REGISTRY_07_007: [The delete method shall throw ReferenceError if the supplied deviceId is falsy.]*/
  if (!deviceId) {
    throw new ReferenceError('deviceId is \'' + deviceId + '\'');
  }

  var path = endpoint.devicePath(deviceId) + versionQueryString();
  /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_007: [The delete method shall delete the given device from an IoT hub’s identity service via the transport associated with the Registry instance.]*/
  this._transport.deleteDevice(path, function (err, body, response) {
    /*Codes_SRS_NODE_IOTHUB_REGISTRY_05_005: [When the delete method completes, the callback function (indicated by the done argument) shall be invoked with an Error object (may be null).]*/
    done(err, null, response);
  });
};

/**
 * @method              module:azure-iothub.Registry#importDevicesFromBlob
 * @description         Imports devices from a blob in bulk job.
 * @param {String}      inputBlobContainerUri   The URI to a container with a blob named 'devices.txt' containing a list of devices to import.
 * @param {String}      outputBlobContainerUri  The URI to a container where a blob will be created with logs of the import process.
 * @param {Function}    done                    The function to call when the job has been created, with two arguments: an error object if an
 *                                              an error happened, (null otherwise) and the job status that can be used to track progress of the devices import.
 */
Registry.prototype.importDevicesFromBlob = function (inputBlobContainerUri, outputBlobContainerUri, done) {
  /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_001: [A ReferenceError shall be thrown if importBlobContainerUri is falsy] */
  if (!inputBlobContainerUri) throw new ReferenceError('inputBlobContainerUri cannot be falsy');
  /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_002: [A ReferenceError shall be thrown if exportBlobContainerUri is falsy] */
  if (!outputBlobContainerUri) throw new ReferenceError('outputBlobContainerUri cannot be falsy');

  /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_008: [The importDevicesFromBlob method should create a bulk import job using the transport associated with the Registry instance by giving it the correct URI path and an import request object such as:
  {
      'type': 'import',
      'inputBlobContainerUri': <input container Uri given as parameter>,
      'outputBlobContainerUri': <output container Uri given as parameter>
  }] */
  var path = "/jobs/create" + versionQueryString();
  var importRequest = {
    'type': 'import',
    'inputBlobContainerUri': inputBlobContainerUri,
    'outputBlobContainerUri': outputBlobContainerUri
  };

  this._transport.importDevicesFromBlob(path, importRequest, function (err, jobStatus) {
    /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_003: [The ‘done’ callback shall be called with the job status as a parameter when the import job has been created] */
    if (err) {
      done(err);
    } else {
      done(null, jobStatus);
    }
  });
};

/**
 * @method              module:azure-iothub.Registry#exportDevicesToBlob
 * @description         Export devices to a blob in a bulk job.
 * @param {String}      outputBlobContainerUri  The URI to a container where a blob will be created with logs of the export process.
 * @param {Boolean}     excludeKeys             Boolean indicating whether security keys should be excluded from the exported data.
 * @param {Function}    done                    The function to call when the job has been created, with two arguments: an error object if an
 *                                              an error happened, (null otherwise) and the job status that can be used to track progress of the devices export.
 */
Registry.prototype.exportDevicesToBlob = function (outputBlobContainerUri, excludeKeys, done) {
  /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_004: [A ReferenceError shall be thrown if outputBlobContainerUri is falsy] */
  if (!outputBlobContainerUri) throw new ReferenceError('outputBlobContainerUri cannot be falsy');

  var path = "/jobs/create" + versionQueryString();
  var exportRequest = {
    'type': 'export',
    'outputBlobContainerUri': outputBlobContainerUri,
    'excludeKeysInExport': excludeKeys
  };

  /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_009: [The exportDevicesToBlob method should create a bulk export job using the transport associated with the Registry instance by giving it the correct path URI and export request object such as:
  {
      'type': 'export',
      'outputBlobContainerUri': <output container Uri given as parameter>,
      'excludeKeysInExport': <excludeKeys Boolean given as parameter>
  }] */
  this._transport.exportDevicesToBlob(path, exportRequest, function (err, jobStatus) {
    /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_005: [The ‘done’ callback shall be called with a null error parameter and the job status as a second parameter when the export job has been created] */
    if (err) {
      done(err);
    } else {
      done(null, jobStatus);
    }
  });
};

/**
 * @method              module:azure-iothub.Registry#listJobs
 * @description         List the last import/export jobs (including the active one, if any).
 * @param {Function}    done    The function to call with two arguments: an error object if an error happened,
 *                              (null otherwise) and the list of past jobs as an argument.
 */
Registry.prototype.listJobs = function (done) {
  /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_016: [The listJobs method should request a list of active and recent bulk import/export jobs using the transport associated with the Registry instance and give it the correct path URI.] */
  var path = "/jobs" + versionQueryString();
  this._transport.listJobs(path, function (err, jobsList) {
    if (err) {
      /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_011: [The ‘done’ callback shall be called with only an error object if the request fails.] */
      done(err);
    } else {
      /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_010: [The ‘done’ callback shall be called with a null error parameter and list of recent jobs as a second parameter if the request is successful.] */
      done(null, jobsList);
    }
  });
};

/**
 * @method              module:azure-iothub.Registry#getJob
 * @description         Get the status of a bulk import/export job.
 * @param {String}      jobId   The identifier of the job for which the user wants to get status information.
 * @param {Function}    done    The function to call with two arguments: an error object if an error happened,
 *                              (null otherwise) and the status of the job whose identifier was passed as an argument.
 */
Registry.prototype.getJob = function (jobId, done) {
  /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_006: [A ReferenceError shall be thrown if jobId is falsy] */
  if (!jobId) throw new ReferenceError('jobId cannot be falsy');

  /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_017: [The getJob method should request status information of the bulk import/export job identified by the jobId parameter using the transport associated with the Registry instance and give it the correct path URI.] */
  var path = "/jobs/" + jobId + versionQueryString();
  this._transport.getJob(path, function (err, jobStatus) {
    if (err) {
      /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_015: [The ‘done’ callback shall be called with only an error object if the request fails.]  */
      done(err);
    } else {
      /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_007: [The ‘done’ callback shall be called with a null error parameter and the job status as second parameter if the request is successful.]  */
      done(null, jobStatus);
    }
  });
};

/**
 * @method              module:azure-iothub.Registry#cancelJob
 * @description         Cancel a bulk import/export job.
 * @param {String}      jobId   The identifier of the job for which the user wants to get status information.
 * @param {Function}    done    The function to call with two arguments: an error object if an error happened,
 *                              (null otherwise) and the (cancelled) status of the job whose identifier was passed as an argument.
 */
Registry.prototype.cancelJob = function (jobId, done) {
  /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_012: [A ReferenceError shall be thrown if the jobId is falsy] */
  if (!jobId) throw new ReferenceError('jobId cannot be falsy');

  /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_018: [The cancelJob method should request cancel the job identified by the jobId parameter using the transport associated with the Registry instance by giving it the correct path URI.] */
  var path = "/jobs/" + jobId + versionQueryString();
  this._transport.cancelJob(path, function (err) {
    if (err) {
      /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_013: [The ‘done’ callback shall be called with only an error object if the request fails.] */
      done(err);
    } else {
      /* Codes_SRS_NODE_IOTHUB_REGISTRY_16_014: [The ‘done’ callback shall be called with no parameters if the request is successful.] */
      done();
    }
  });
};

function createDeviceArray(sourceArray) {
  var devList = [];
  sourceArray.forEach(function (sourceDevice) {
    var device = new Device(sourceDevice);
    devList.push(device);
  });
  return devList;
}

/**
 * @method              module:azure-iothub.Registry#queryDevicesByTags
 * @description         The queryDevicesByTags method will return a list of devices that match the tags that are specified in the tag list.
 * @param {array}       tags      The list of tags used in the query.
 * @param {int}         maxCount  The maximum number of devices returned.
 * @param {Function}    done      The function to call when the operation is
 *                                complete. `done` will be called with three
 *                                arguments: an Error object (can be null), an
 *                                array of
 *                                {@link module:azure-iothub.Device|Device}
 *                                objects representing the listed device
 *                                identities, and a transport-specific response
 *                                object useful for logging or debugging. */
Registry.prototype.queryDevicesByTags = function (tags, maxCount, done) {
  /* Codes_SRS_NODE_IOTHUB_REGISTRY_07_019: [A ReferenceError shall be thrown if the tags array is empty.] */
  if (!tags || tags.length === 0) throw new ArgumentError('tag list is empty');
  /* Codes_SRS_NODE_IOTHUB_REGISTRY_07_023: [A ReferenceError shall be thrown if the maxCount is less than or equal to zero.] */
  if (maxCount <= 0) throw new RangeError('invalid Max Count specified');

  /* Codes_SRS_NODE_IOTHUB_REGISTRY_07_020: [The queryDevicesByTags method shall call the server for the device that contain the tags] */
  this._transport.queryDevicesByTags(versionQueryString(), tags, maxCount, function (err, body, response) {
    if (err) {
      done(err);
    } else {
      /* Codes_SRS_NODE_IOTHUB_REGISTRY_07_022: [The JSON array returned from the service shall be converted to a list of Device objects.] */
      var sourceArray = JSON.parse(body);
      var devList = createDeviceArray(sourceArray);
      /* Codes_SRS_NODE_IOTHUB_REGISTRY_07_021: [When the list method completes, the callback function (indicated by the done argument) shall be invoked with an Error object (may be null), and an array of Device objects representing up to Max Count devices from the IoT hub.] */
      done(err, devList, response);
    }
  });
};

/**
 * @method              module:azure-iothub.Registry#queryDevices
 * @description         The queryDevices method will return a list of devices that match the specified query.
 * @param {Object}      query     The query object.
 * @param {Function}    done      The function to call when the operation is
 *                                complete. `done` will be called with three arguments:
 *                                - an Error object (can be null)
 *                                - a result object that can be:
 *                                  - an array of {@link module:azure-iothub.Device|Device}
 *                                    objects representing the matching device
 *                                    identities
 *                                  - an associative array with the aggregate results 
 *                                    if the query object requested an aggregation operation
 *                                - a transport-specific response object useful for logging or debugging.
 */
Registry.prototype.queryDevices = function (query, done) {
  /*Codes_SRS_NODE_IOTHUB_REGISTRY_16_019: [** A `ReferenceError` shall be thrown if the query object is falsy or empty.]*/
  if (!query) throw new ReferenceError('Query object cannot be \'' + query + '\'');

  this._transport.queryDevices(versionQueryString(), query, function (err, body, response) {
    if(err) {
      /*Codes_SRS_NODE_IOTHUB_REGISTRY_16_020: [** The `done` callback shall be called with an `Error` object if the request fails.]*/
      done(err);
    } else {
      var queryResult;
      var resultObject = JSON.parse(body);
      if(resultObject.Result) {
        /*SRS_NODE_IOTHUB_REGISTRY_16_021: [The `done` callback shall be called with a null object for first parameter and the result object as a second parameter that is a simple array of `Device` objects corresponding to the devices matching the query if it uses projection.]*/
        queryResult = createDeviceArray(resultObject.Result);
      } else {
        /*SRS_NODE_IOTHUB_REGISTRY_16_022: [The `done` callback shall be called with a null object for first parameter and the result object as a second parameter that is an associative array (dictionary) of results if the query was an aggregation query.]*/
        queryResult = resultObject.AggregateResult;
      }

      done(null, queryResult, response);
    }
  });
};

/**
 * @method              module:azure-iothub.Registry#setServiceProperties
 * @description         The setServiceProperties method will replace the existing service properties of a device.
 * @param {Object}      deviceId           The identifier used to uniquely identify the device.
 * @param {Object}      serviceProperties  The service properties that should replace the existing ones.
 * @param {Function}    done               The function to call when the operation is
 *                                         complete. `done` will be called with three arguments:
 *                                         - an Error object (can be null)
 *                                         - a result object
 *                                         - a transport-specific response object useful for logging or debugging.
 */
Registry.prototype.setServiceProperties = function (deviceId, serviceProperties, done) {
  /*Codes_SRS_NODE_IOTHUB_REGISTRY_16_024: [A `ReferenceError` shall be thrown if `deviceId` is falsy.]*/
  if (!deviceId) throw new ReferenceError('deviceId cannot be \'' + deviceId + '\'');
  /*Codes_SRS_NODE_IOTHUB_REGISTRY_16_025: [A `ReferenceError` shall be thrown if `serviceProperties` is falsy.]*/
  if (!serviceProperties) throw new ReferenceError('deviceId cannot be \'' + serviceProperties + '\'');

  var path = endpoint.devicePath(deviceId) + '/serviceProperties' + versionQueryString();
  this._transport.setServiceProperties(path, serviceProperties, function (err, body, response) {
    if (err) {
      /*SRS_NODE_IOTHUB_REGISTRY_16_026: [The `done` callback shall be called with an `Error` object if the request fails. ]*/
      done(err);
    } else {
      /*SRS_NODE_IOTHUB_REGISTRY_16_027: [The `done` callback shall be called with a null object for first parameter and the result object as a second parameter that is an associative array (dictionary) of service properties if the request succeeds.]*/
      var serviceProperties = JSON.parse(body);
      done(null, serviceProperties, response);
    }
  });
};


/**
 * @method              module:azure-iothub.Registry#getRegistryStatistics
 * @description         The getRegistryStatistics method will retrieve device-related statistics from Registry.
 * @param {Function}    done               The function to call when the operation is
 *                                         complete. `done` will be called with three arguments:
 *                                         - an Error object (can be null)
 *                                         - a result object that is an associative array containing the registry statistics.
 *                                         - a transport-specific response object useful for logging or debugging.
 */
Registry.prototype.getRegistryStatistics = function (done) {
  var path = '/statistics/devices' + endpoint.versionQueryString();
  this._transport.getRegistryStatistics(path, function (err, body, response) {  
    if (err) {
      /*Codes_SRS_NODE_IOTHUB_REGISTRY_16_028: [The `done` callback shall be called with an `Error` object if the request fails.]*/
      done(err);
    } else {
      /*Codes_SRS_NODE_IOTHUB_REGISTRY_16_029: [The `done` callback shall be called with a null object for first parameter and the result object as a second parameter that is an associative array (dictionary) of registry statistics if the request succeeds.]*/
      var stats = JSON.parse(body);
      done(null, stats, response);
    }
  });
};

module.exports = Registry;