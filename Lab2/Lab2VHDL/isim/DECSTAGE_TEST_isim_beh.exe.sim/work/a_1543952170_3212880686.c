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
static const char *ng0 = "C:/Users/vaila/Dropbox/ORGANWSH/Lab2/Lab2VHDL/CompareModule.vhd";



static void work_a_1543952170_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t5 = 1;
    if (5U == 5U)
        goto LAB8;

LAB9:    t5 = 0;

LAB10:    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB20:    t20 = (t0 + 2912);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t20);

LAB2:    t25 = (t0 + 2832);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t15 = (t0 + 2912);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB5:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 4622);
    t11 = 1;
    if (5U == 5U)
        goto LAB14;

LAB15:    t11 = 0;

LAB16:    t1 = (!(t11));
    goto LAB7;

LAB8:    t6 = 0;

LAB11:    if (t6 < 5U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB9;

LAB13:    t6 = (t6 + 1);
    goto LAB11;

LAB14:    t12 = 0;

LAB17:    if (t12 < 5U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t13 = (t9 + t12);
    t14 = (t8 + t12);
    if (*((unsigned char *)t13) != *((unsigned char *)t14))
        goto LAB15;

LAB19:    t12 = (t12 + 1);
    goto LAB17;

LAB21:    goto LAB2;

}


extern void work_a_1543952170_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1543952170_3212880686_p_0};
	xsi_register_didat("work_a_1543952170_3212880686", "isim/DECSTAGE_TEST_isim_beh.exe.sim/work/a_1543952170_3212880686.didat");
	xsi_register_executes(pe);
}
