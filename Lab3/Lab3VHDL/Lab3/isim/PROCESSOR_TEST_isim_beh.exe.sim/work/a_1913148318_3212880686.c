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
static const char *ng0 = "C:/Users/vaila/Dropbox/ORGANWSH/lab3/Lab3VHDL/Lab3/IFSTAGE.vhd";
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

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 7080U);
    t4 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t1, t3, t2, 4);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (10U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 4296);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 10U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 4200);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(10U, t7, 0);
    goto LAB6;

}

static void work_a_1913148318_3212880686_p_1(char *t0)
{
    char t1[16];
    char t2[16];
    char t11[16];
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(63, ng0);

LAB3:    t3 = (t0 + 2472U);
    t4 = *((char **)t3);
    t3 = (t0 + 7080U);
    t5 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t2, t4, t3, 4);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = (31 - 9);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t6 = (t7 + t10);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 9;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - 9);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t1, t5, t2, t6, t11);
    t16 = (t1 + 12U);
    t15 = *((unsigned int *)t16);
    t17 = (1U * t15);
    t18 = (10U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t19 = (t0 + 4360);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t13, 10U);
    xsi_driver_first_trans_fast(t19);

LAB2:    t24 = (t0 + 4216);
    *((int *)t24) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(10U, t17, 0);
    goto LAB6;

}


extern void work_a_1913148318_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1913148318_3212880686_p_0,(void *)work_a_1913148318_3212880686_p_1};
	xsi_register_didat("work_a_1913148318_3212880686", "isim/PROCESSOR_TEST_isim_beh.exe.sim/work/a_1913148318_3212880686.didat");
	xsi_register_executes(pe);
}
