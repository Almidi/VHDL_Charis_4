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
static const char *ng0 = "C:/Users/vaila/Dropbox/ORGANWSH/Lab5/lab5VHDL/FWD_CNTRL.vhd";



static void work_a_1494914966_3212880686_p_0(char *t0)
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
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t5 = 1;
    if (5U == 5U)
        goto LAB8;

LAB9:    t5 = 0;

LAB10:    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t5 = 1;
    if (5U == 5U)
        goto LAB19;

LAB20:    t5 = 0;

LAB21:    if (t5 == 1)
        goto LAB16;

LAB17:    t1 = (unsigned char)0;

LAB18:    if (t1 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 5938);
    t4 = (t0 + 3712);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t4);

LAB3:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t5 = 1;
    if (5U == 5U)
        goto LAB31;

LAB32:    t5 = 0;

LAB33:    if (t5 == 1)
        goto LAB28;

LAB29:    t1 = (unsigned char)0;

LAB30:    if (t1 != 0)
        goto LAB25;

LAB27:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t5 = 1;
    if (5U == 5U)
        goto LAB42;

LAB43:    t5 = 0;

LAB44:    if (t5 == 1)
        goto LAB39;

LAB40:    t1 = (unsigned char)0;

LAB41:    if (t1 != 0)
        goto LAB37;

LAB38:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 5944);
    t4 = (t0 + 3776);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t4);

LAB26:    t2 = (t0 + 3632);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(24, ng0);
    t8 = (t0 + 5934);
    t13 = (t0 + 3712);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 2U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB3;

LAB5:    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
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

LAB14:    xsi_set_current_line(26, ng0);
    t8 = (t0 + 5936);
    t13 = (t0 + 3712);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 2U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB3;

LAB16:    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB18;

LAB19:    t6 = 0;

LAB22:    if (t6 < 5U)
        goto LAB23;
    else
        goto LAB21;

LAB23:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB20;

LAB24:    t6 = (t6 + 1);
    goto LAB22;

LAB25:    xsi_set_current_line(34, ng0);
    t8 = (t0 + 5940);
    t13 = (t0 + 3776);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 2U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB26;

LAB28:    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB30;

LAB31:    t6 = 0;

LAB34:    if (t6 < 5U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB32;

LAB36:    t6 = (t6 + 1);
    goto LAB34;

LAB37:    xsi_set_current_line(36, ng0);
    t8 = (t0 + 5942);
    t13 = (t0 + 3776);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 2U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB26;

LAB39:    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB41;

LAB42:    t6 = 0;

LAB45:    if (t6 < 5U)
        goto LAB46;
    else
        goto LAB44;

LAB46:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB43;

LAB47:    t6 = (t6 + 1);
    goto LAB45;

}


extern void work_a_1494914966_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1494914966_3212880686_p_0};
	xsi_register_didat("work_a_1494914966_3212880686", "isim/CPU_TEST_isim_beh.exe.sim/work/a_1494914966_3212880686.didat");
	xsi_register_executes(pe);
}
