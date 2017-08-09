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
static const char *ng0 = "C:/Users/vaila/Dropbox/ORGANWSH/Lab4/LAB4VHDL/IFSTAGE.vhd";
extern char *IEEE_P_0774719531;

char *ieee_p_0774719531_sub_436279890_2162500114(char *, char *, char *, char *, int );
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);


static void work_a_1913148318_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = (t0 + 7472U);
    t4 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t1, t3, t2, 4);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (10U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 4616);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 10U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 4520);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(10U, t7, 0);
    goto LAB6;

}

static void work_a_1913148318_3212880686_p_1(char *t0)
{
    char t5[16];
    char t6[16];
    char t15[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 4200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(66, ng0);

LAB13:    t2 = (t0 + 4536);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;

LAB1:    return;
LAB5:    xsi_set_current_line(68, ng0);
    t7 = (t0 + 2792U);
    t8 = *((char **)t7);
    t7 = (t0 + 7472U);
    t9 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t6, t8, t7, 4);
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t12 = (31 - 9);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t10 = (t11 + t14);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 9;
    t17 = (t16 + 4U);
    *((int *)t17) = 0;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 9);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t5, t9, t6, t10, t15);
    t20 = (t5 + 12U);
    t19 = *((unsigned int *)t20);
    t21 = (1U * t19);
    t22 = (10U != t21);
    if (t22 == 1)
        goto LAB7;

LAB8:    t23 = (t0 + 4680);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t17, 10U);
    xsi_driver_first_trans_fast(t23);
    goto LAB4;

LAB6:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = (t0 + 7472U);
    t7 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t6, t3, t2, 4);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t12 = (31 - 9);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t8 = (t9 + t14);
    t10 = (t15 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 9;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t18 = (0 - 9);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t19;
    t11 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t5, t7, t6, t8, t15);
    t16 = (t5 + 12U);
    t19 = *((unsigned int *)t16);
    t21 = (1U * t19);
    t4 = (10U != t21);
    if (t4 == 1)
        goto LAB9;

LAB10:    t17 = (t0 + 4680);
    t20 = (t17 + 56U);
    t23 = *((char **)t20);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t11, 10U);
    xsi_driver_first_trans_fast(t17);
    goto LAB4;

LAB7:    xsi_size_not_matching(10U, t21, 0);
    goto LAB8;

LAB9:    xsi_size_not_matching(10U, t21, 0);
    goto LAB10;

LAB11:    t3 = (t0 + 4536);
    *((int *)t3) = 0;
    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

}


extern void work_a_1913148318_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1913148318_3212880686_p_0,(void *)work_a_1913148318_3212880686_p_1};
	xsi_register_didat("work_a_1913148318_3212880686", "isim/PROCESSOR_TEST_isim_beh.exe.sim/work/a_1913148318_3212880686.didat");
	xsi_register_executes(pe);
}
