################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
manufacturer_api/manufacturer_api.obj: ../manufacturer_api/manufacturer_api.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/TI/ccsv6/tools/compiler/ti-cgt-msp430_4.4.5/bin/cl430" -vmspx --abi=eabi --data_model=restricted -O2 --opt_for_speed=0 --use_hw_mpy=F5 --include_path="C:/TI/ccsv6/ccs_base/msp430/include" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/apps" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/components/aes" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/components/bsp" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/components/hostcmd" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/components/lcd" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/components/common" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/components/devices/cc112x" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/components/interrupt" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/components/nvm" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/components/radio" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/components/targets/trxeb_msp430f5438a" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/components/timer" --include_path="C:/Users/Administrator/Documents/CCS Projects/DOOR SENSOR V2/sigfox_library_api" --include_path="C:/TI/ccsv6/tools/compiler/ti-cgt-msp430_4.4.5/include" --advice:power="all" -g --define=DOWNLINK --define=__MSP430F5438A__ --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --printf_support=minimal --preproc_with_compile --preproc_dependency="manufacturer_api/manufacturer_api.pp" --obj_directory="manufacturer_api" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


