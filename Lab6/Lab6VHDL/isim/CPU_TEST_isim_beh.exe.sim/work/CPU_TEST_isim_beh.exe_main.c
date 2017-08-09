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

char *IEEE_P_3620187407;
char *IEEE_P_3564397177;
char *IEEE_P_1242562249;
char *SYNOPSYS_P_3308480207;
char *STD_TEXTIO;
char *IEEE_P_2592010699;
char *IEEE_P_0774719531;
char *IEEE_P_0017514958;
char *IEEE_P_3499444699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    ieee_p_1242562249_init();
    synopsys_p_3308480207_init();
    ieee_p_0017514958_init();
    work_a_0972602110_3212880686_init();
    work_a_0346916625_3212880686_init();
    work_a_1886491645_3212880686_init();
    work_a_3113638285_3212880686_init();
    work_a_3717513326_3212880686_init();
    work_a_3055914554_3212880686_init();
    work_a_3210472007_3212880686_init();
    work_a_1252352503_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_2128221623_3212880686_init();
    work_a_1973193242_3212880686_init();
    work_a_1506983852_3212880686_init();
    work_a_1543952170_3212880686_init();
    work_a_0098398448_3212880686_init();
    work_a_2615964831_3212880686_init();
    work_a_1572371690_3212880686_init();
    work_a_3967920148_3212880686_init();
    ieee_p_3620187407_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_3998048205_3212880686_init();
    work_a_1991350011_3212880686_init();
    work_a_4202670372_0000452272_init();
    work_a_1913148318_3212880686_init();
    work_a_2820978708_0000452272_init();
    work_a_2089763798_3212880686_init();
    work_a_3243397463_3212880686_init();
    work_a_0720342707_3212880686_init();
    work_a_1615522378_3212880686_init();
    work_a_2657849955_3212880686_init();
    work_a_2161729135_3212880686_init();
    work_a_1009422619_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_2038303166_2372691052_init();


    xsi_register_tops("work_a_2038303166_2372691052");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    SYNOPSYS_P_3308480207 = xsi_get_engine_memory("synopsys_p_3308480207");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_0017514958 = xsi_get_engine_memory("ieee_p_0017514958");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
