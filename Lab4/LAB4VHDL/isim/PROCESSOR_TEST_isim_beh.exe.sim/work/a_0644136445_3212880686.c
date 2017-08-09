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
static const char *ng0 = "C:/Users/vaila/Dropbox/ORGANWSH/Lab4/LAB4VHDL/QUADREG.vhd";



static void work_a_0644136445_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 2992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);

LAB6:    t2 = (t0 + 3560);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 3560);
    *((int *)t6) = 0;
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = (0 - 4);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t3 = *((unsigned char *)t2);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = (1 - 4);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t3 = *((unsigned char *)t2);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = (2 - 4);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t3 = *((unsigned char *)t2);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = (3 - 4);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t3 = *((unsigned char *)t2);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB20;

LAB22:
LAB21:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = (4 - 4);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t3 = *((unsigned char *)t2);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB23;

LAB25:
LAB24:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB26;

LAB28:
LAB27:    goto LAB2;

LAB5:    t4 = (t0 + 992U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

LAB11:    xsi_set_current_line(42, ng0);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t6 = (t0 + 3656);
    t14 = (t6 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 32U);
    xsi_driver_first_trans_fast(t6);
    goto LAB12;

LAB14:    xsi_set_current_line(45, ng0);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t18 = (31 - 7);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t6 = (t7 + t20);
    t14 = (t0 + 3656);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t21 = *((char **)t17);
    memcpy(t21, t6, 8U);
    xsi_driver_first_trans_delta(t14, 24U, 8U, 0LL);
    goto LAB15;

LAB17:    xsi_set_current_line(48, ng0);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t18 = (31 - 7);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t6 = (t7 + t20);
    t14 = (t0 + 3656);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t21 = *((char **)t17);
    memcpy(t21, t6, 8U);
    xsi_driver_first_trans_delta(t14, 16U, 8U, 0LL);
    goto LAB18;

LAB20:    xsi_set_current_line(51, ng0);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t18 = (31 - 7);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t6 = (t7 + t20);
    t14 = (t0 + 3656);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t21 = *((char **)t17);
    memcpy(t21, t6, 8U);
    xsi_driver_first_trans_delta(t14, 8U, 8U, 0LL);
    goto LAB21;

LAB23:    xsi_set_current_line(54, ng0);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t18 = (31 - 7);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t6 = (t7 + t20);
    t14 = (t0 + 3656);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t21 = *((char **)t17);
    memcpy(t21, t6, 8U);
    xsi_driver_first_trans_delta(t14, 0U, 8U, 0LL);
    goto LAB24;

LAB26:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 5791);
    t7 = (t0 + 3656);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t2, 32U);
    xsi_driver_first_trans_fast(t7);
    goto LAB27;

}

static void work_a_0644136445_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3720);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3576);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0644136445_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0644136445_3212880686_p_0,(void *)work_a_0644136445_3212880686_p_1};
	xsi_register_didat("work_a_0644136445_3212880686", "isim/PROCESSOR_TEST_isim_beh.exe.sim/work/a_0644136445_3212880686.didat");
	xsi_register_executes(pe);
}
