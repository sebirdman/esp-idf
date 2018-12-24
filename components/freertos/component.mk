#
# Component Makefile
#

COMPONENT_ADD_LDFLAGS += -Wl,--undefined=uxTopUsedPriority
COMPONENT_ADD_INCLUDEDIRS :=  lib/include/private lib/include lib/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/include lib/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32 
COMPONENT_PRIV_INCLUDEDIRS := lib/include/private lib/include lib/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/include 
COMPONENT_SRCDIRS := lib/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32 lib/FreeRTOS 

tasks.o event_groups.o timers.o queue.o: CFLAGS += -D_ESP_FREERTOS_INTERNAL
COMPONENT_ADD_LDFRAGMENTS += linker.lf
