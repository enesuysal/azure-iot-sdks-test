

// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

//
// Simple implementation of IoTHub LWM2M Config object
//

//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.

#include "iotdm_internal.h"
#include "iotdm_dispatchers.h"
#include "config_object.h"


/**********************************************************************************
 * Config default property values
 *
 **********************************************************************************/

void set_default_config_property_values(object_config *obj)
{
    set_config_name(obj->instanceId, "Config_Name");
    set_config_value(obj->instanceId, "Config_Value");
}

/**********************************************************************************
 * CALLBACK HANDLERS
 *
 **********************************************************************************/
IOTHUB_CLIENT_RESULT on_read_config_name(object_config *obj, char **value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->config_name_read_callback != NULL)
    {
        result = obj->config_name_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = lwm2m_strdup(obj->propval_config_name);
        LogInfo("returning [%s] for Config_Name", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_write_config_name(object_config *obj, const char *value, size_t length)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    lwm2m_free(obj->propval_config_name);
    obj->propval_config_name = iotdm_strndup(value, length);
    LogInfo("Config_Name being set to [%s]", obj->propval_config_name);

    if (obj->config_name_write_callback != NULL)
    {
        result = obj->config_name_write_callback(obj);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_read_config_value(object_config *obj, char **value)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    if (obj->config_value_read_callback != NULL)
    {
        result = obj->config_value_read_callback(obj);
    }
    if (result == IOTHUB_CLIENT_OK)
    {
        *value = lwm2m_strdup(obj->propval_config_value);
        LogInfo("returning [%s] for Config_Value", *value);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_write_config_value(object_config *obj, const char *value, size_t length)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_OK;
    lwm2m_free(obj->propval_config_value);
    obj->propval_config_value = iotdm_strndup(value, length);
    LogInfo("Config_Value being set to [%s]", obj->propval_config_value);

    if (obj->config_value_write_callback != NULL)
    {
        result = obj->config_value_write_callback(obj);
    }
    return result;
}

IOTHUB_CLIENT_RESULT on_exec_config_apply(object_config *obj)
{
    IOTHUB_CLIENT_RESULT result = IOTHUB_CLIENT_NOT_IMPLEMENTED;
    LogInfo("inside execute handler for Config_Apply");
    if (obj->config_apply_execute_callback != NULL)
    {
        result = obj->config_apply_execute_callback(obj);
    }
    return result;
}


