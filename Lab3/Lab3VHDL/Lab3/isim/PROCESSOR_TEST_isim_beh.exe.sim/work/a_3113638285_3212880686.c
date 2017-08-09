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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/vaila/Dropbox/ORGANWSH/lab3/Lab3VHDL/Lab3/ROTL.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3113638285_3212880686_p_0(char *t0)
{
    char t14[16];
    char t16[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t15;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(37, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (31 - 30);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = (31 - 31);
    t9 = (t8 * -1);
    t10 = (1U * t9);
    t11 = (0 + t10);
    t6 = (t7 + t11);
    t12 = *((unsigned char *)t6);
    t15 = ((IEEE_P_2592010699) + 4024);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 30;
    t18 = (t17 + 4U);
    *((int *)t18) = 0;
    t18 = (t17 + 8U);
    *((int *)t18) = -1;
    t19 = (0 - 30);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t13 = xsi_base_array_concat(t13, t14, t15, (char)97, t1, t16, (char)99, t12, (char)101);
    t20 = (31U + 1U);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB5;

LAB6:    t18 = (t0 + 2752);
    t22 = (t18 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t13, 32U);
    xsi_driver_first_trans_fast_port(t18);

LAB2:    t26 = (t0 + 2672);
    *((int *)t26) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t20, 0);
    goto LAB6;

}


extern void work_a_3113638285_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3113638285_3212880686_p_0};
	xsi_register_didat("work_a_3113638285_3212880686", "isim/PROCESSOR_TEST_isim_beh.exe.sim/work/a_3113638285_3212880686.didat");
	xsi_register_executes(pe);
}
