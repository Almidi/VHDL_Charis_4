/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_STANDARD;
char *IEEE_P_3499444699;
char *SYNOPSYS_P_3308480207;
char *IEEE_P_1242562249;
char *IEEE_P_0017514958;
char *IEEE_P_2592010699;
char *IEEE_P_0774719531;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    synopsys_p_3308480207_init();
    ieee_p_0017514958_init();
    ieee_p_1242562249_init();
    work_a_0346916625_3212880686_init();
    work_a_1886491645_3212880686_init();
    work_a_3113638285_3212880686_init();
    work_a_3717513326_3212880686_init();
    work_a_3055914554_3212880686_init();
    work_a_3210472007_3212880686_init();
    work_a_1252352503_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_2602956921_2372691052_init();


    xsi_register_tops("work_a_2602956921_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    SYNOPSYS_P_3308480207 = xsi_get_engine_memory("synopsys_p_3308480207");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_0017514958 = xsi_get_engine_memory("ieee_p_0017514958");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");

    return xsi_run_simulation(argc, argv);

}
