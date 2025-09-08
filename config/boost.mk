VOLTAGE_CPU_SMALL_CORES ?= 0,1,2,3
VOLTAGE_CPU_BIG_CORES ?= 4,5,6,7
VOLTAGE_ALL_CORES ?= 0-7
VOLTAGE_CPU_SYS_BG ?= 0-3
VOLTAGE_CPU_BG ?= 0-2
VOLTAGE_CPU_FG ?= 0-5
VOLTAGE_CPU_LIMIT_BG ?= 0-1
VOLTAGE_CPU_LIMIT_UI ?= 0-2
VOLTAGE_CPU_DISPLAY ?= 0-5

# feature
PERF_ANIM_OVERRIDE ?= false

# boost properties
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.voltage_cpu_big=$(VOLTAGE_CPU_BIG_CORES) \
    persist.sys.voltage_cpu_small=$(VOLTAGE_CPU_SMALL_CORES) \
    persist.sys.voltage_cpu_bg=$(VOLTAGE_CPU_BG) \
    persist.sys.voltage_cpu_sys_bg=$(VOLTAGE_CPU_SYS_BG) \
    persist.sys.voltage_cpu_limit_bg=$(VOLTAGE_CPU_LIMIT_BG) \
    persist.sys.voltage_cpu_fg=$(VOLTAGE_CPU_FG) \
    persist.sys.voltage_cpu_limit_ui=$(VOLTAGE_CPU_LIMIT_UI) \
    persist.sys.voltage_cpu_unlimit_ui=$(VOLTAGE_ALL_CORES) \
    persist.sys.voltage_cpu_display=$(VOLTAGE_CPU_DISPLAY)

PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.uclamp.min=10
    persist.sys.activity_anim_perf_override=$(PERF_ANIM_OVERRIDE)
