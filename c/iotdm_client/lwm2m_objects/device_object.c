

// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

//
// Simple implementation of IoTHub LWM2M Device object
//

//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.

#include "iotdm_internal.h"
#include "iotdm_dispatchers.h"
#include "device_object.h"


/**********************************************************************************
 * Device default property values
 *
 **********************************************************************************/

void set_default_device_property_values(object_device *obj)
{
    set_device_manufacturer(obj->instanceId, "Device_Manufacturer");
    set_device_modelnumber(obj->instanceId, "Device_ModelNumber");
    set_device_serialnumber(obj->instanceId, "Device_SerialNumber");
    set_device_firmwareversion(obj->instanceId, "Device_FirmwareVersion");
    set_device_batterylevel(obj->instanceId, -1);
    set_device_memoryfree(obj->instanceId, -1);
    set_device_currenttime(obj->instanceId, -1);
    set_device_utcoffset(obj->instanceId, "Device_UtcOffset");
    set_device_timezone(obj->instanceId, "Device_Timezone");
    set_device_devicetype(obj->instanceId, "Device_DeviceType");
    set_device_hardwareversion(obj->instanceId, "Device_HardwareVersion");
    set_device_batterystatus(obj->instanceId, -1);
    set_device_memorytotal(obj->instanceId, -1);
}

/**********************************************************************************
 * CALLBACK HANDLERS
 *
 **********************************************************************************/
IOTHUB_CLIENT_RESULT on_read_device_manufacturer(object_device *obj, char **value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_manufacturer_read_callback != NULL)
    {
        result = obj->device_manufacturer_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = lwm2m_strdup(obj->propval_device_manufacturer);
        LogInfo("returning [%s] for Device_Manufacturer", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_modelnumber(object_device *obj, char **value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_modelnumber_read_callback != NULL)
    {
        result = obj->device_modelnumber_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = lwm2m_strdup(obj->propval_device_modelnumber);
        LogInfo("returning [%s] for Device_ModelNumber", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_serialnumber(object_device *obj, char **value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_serialnumber_read_callback != NULL)
    {
        result = obj->device_serialnumber_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = lwm2m_strdup(obj->propval_device_serialnumber);
        LogInfo("returning [%s] for Device_SerialNumber", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_firmwareversion(object_device *obj, char **value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_firmwareversion_read_callback != NULL)
    {
        result = obj->device_firmwareversion_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = lwm2m_strdup(obj->propval_device_firmwareversion);
        LogInfo("returning [%s] for Device_FirmwareVersion", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_exec_device_reboot(object_device *obj)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_NOT_IMPLEMENTED;
    LogInfo("inside execute handler for Device_Reboot");
    if (obj->device_reboot_execute_callback != NULL)
    {
        result = obj->device_reboot_execute_callback(obj);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_exec_device_factoryreset(object_device *obj)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_NOT_IMPLEMENTED;
    LogInfo("inside execute handler for Device_FactoryReset");
    if (obj->device_factoryreset_execute_callback != NULL)
    {
        result = obj->device_factoryreset_execute_callback(obj);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_batterylevel(object_device *obj, int64_t *value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_batterylevel_read_callback != NULL)
    {
        result = obj->device_batterylevel_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = obj->propval_device_batterylevel;
        LogInfo("returning %lld for Device_BatteryLevel", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_memoryfree(object_device *obj, int64_t *value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_memoryfree_read_callback != NULL)
    {
        result = obj->device_memoryfree_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = obj->propval_device_memoryfree;
        LogInfo("returning %lld for Device_MemoryFree", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_currenttime(object_device *obj, int64_t *value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_currenttime_read_callback != NULL)
    {
        result = obj->device_currenttime_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = obj->propval_device_currenttime;
        LogInfo("returning %lld for Device_CurrentTime", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_write_device_currenttime(object_device *obj, int64_t value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    LogInfo("Device_CurrentTime being set to %lld", value);
    obj->propval_device_currenttime = value;

    if (obj->device_currenttime_write_callback != NULL)
    {
        result = obj->device_currenttime_write_callback(obj);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_utcoffset(object_device *obj, char **value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_utcoffset_read_callback != NULL)
    {
        result = obj->device_utcoffset_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = lwm2m_strdup(obj->propval_device_utcoffset);
        LogInfo("returning [%s] for Device_UtcOffset", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_write_device_utcoffset(object_device *obj, const char *value, size_t length)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    lwm2m_free(obj->propval_device_utcoffset);
    obj->propval_device_utcoffset = iotdm_strndup(value, length);
    LogInfo("Device_UtcOffset being set to [%s]", obj->propval_device_utcoffset);

    if (obj->device_utcoffset_write_callback != NULL)
    {
        result = obj->device_utcoffset_write_callback(obj);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_timezone(object_device *obj, char **value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_timezone_read_callback != NULL)
    {
        result = obj->device_timezone_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = lwm2m_strdup(obj->propval_device_timezone);
        LogInfo("returning [%s] for Device_Timezone", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_write_device_timezone(object_device *obj, const char *value, size_t length)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    lwm2m_free(obj->propval_device_timezone);
    obj->propval_device_timezone = iotdm_strndup(value, length);
    LogInfo("Device_Timezone being set to [%s]", obj->propval_device_timezone);

    if (obj->device_timezone_write_callback != NULL)
    {
        result = obj->device_timezone_write_callback(obj);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_devicetype(object_device *obj, char **value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_devicetype_read_callback != NULL)
    {
        result = obj->device_devicetype_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = lwm2m_strdup(obj->propval_device_devicetype);
        LogInfo("returning [%s] for Device_DeviceType", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_hardwareversion(object_device *obj, char **value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_hardwareversion_read_callback != NULL)
    {
        result = obj->device_hardwareversion_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = lwm2m_strdup(obj->propval_device_hardwareversion);
        LogInfo("returning [%s] for Device_HardwareVersion", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_batterystatus(object_device *obj, int64_t *value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_batterystatus_read_callback != NULL)
    {
        result = obj->device_batterystatus_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = obj->propval_device_batterystatus;
        LogInfo("returning %lld for Device_BatteryStatus", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_device_memorytotal(object_device *obj, int64_t *value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->device_memorytotal_read_callback != NULL)
    {
        result = obj->device_memorytotal_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = obj->propval_device_memorytotal;
        LogInfo("returning %lld for Device_MemoryTotal", *value);
    }
    return result;
}


