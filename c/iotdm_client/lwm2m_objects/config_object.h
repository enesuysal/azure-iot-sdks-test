

// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

//
// Simple implementation of IoTHub LWM2M Config object
//

//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.

#ifndef _CONFIG_OBJECT_H_
#define _CONFIG_OBJECT_H_

#include "iothub_client.h"

#ifdef __cplusplus
extern "C"
{
#endif

// LWM2M Object IDs and Property IDs for config object
#define OID_CONFIG 10241
#define PID_CONFIG_NAME 1
#define PID_CONFIG_VALUE 2
#define PID_CONFIG_APPLY 3

#define CONFIG_PROPERTY_COUNT 3

typedef struct TAG_object_config object_config;
typedef IOTHUB_CLIENT_RESULT(*CONFIG_RESOURCE_CALLBACK)(object_config *obj);

// Object definition for config object
typedef struct TAG_object_config {
    uint16_t instanceId;    // Must be first member of structure
    IOTHUB_CHANNEL_HANDLE channelHandle;
    char resourceUpdated[CONFIG_PROPERTY_COUNT];
    char* propval_config_name;        // /10241/x/1
    char* propval_config_value;        // /10241/x/2
    CONFIG_RESOURCE_CALLBACK config_name_read_callback;
    CONFIG_RESOURCE_CALLBACK config_name_write_callback;
    CONFIG_RESOURCE_CALLBACK config_value_read_callback;
    CONFIG_RESOURCE_CALLBACK config_value_write_callback;
    CONFIG_RESOURCE_CALLBACK config_apply_execute_callback;
} object_config;

IOTHUB_CLIENT_RESULT create_config_object(IOTHUB_CLIENT_HANDLE h, uint16_t *instanceId);
object_config *get_config_object(uint16_t instanceId);

// Property setters for config object
IOTHUB_CLIENT_RESULT set_config_name(uint16_t instanceId, const char *value);
IOTHUB_CLIENT_RESULT set_config_value(uint16_t instanceId, const char *value);

#ifdef __cplusplus
}
#endif

#endif // _CONFIG_OBJECT_H_

