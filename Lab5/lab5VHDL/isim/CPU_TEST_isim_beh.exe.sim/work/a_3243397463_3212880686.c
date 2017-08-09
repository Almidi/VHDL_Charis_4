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
static const char *ng0 = "C:/Users/vaila/Dropbox/ORGANWSH/Lab5/lab5VHDL/CNTRL.vhd";



static void work_a_3243397463_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    t1 = (t0 + 4432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 12102);
    t9 = xsi_mem_cmp(t7, t2, 6U);
    if (t9 == 1)
        goto LAB5;

LAB10:    t10 = (t0 + 12108);
    t12 = xsi_mem_cmp(t10, t2, 6U);
    if (t12 == 1)
        goto LAB6;

LAB11:    t13 = (t0 + 12114);
    t15 = xsi_mem_cmp(t13, t2, 6U);
    if (t15 == 1)
        goto LAB7;

LAB12:    t16 = (t0 + 12120);
    t18 = xsi_mem_cmp(t16, t2, 6U);
    if (t18 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 12142);
    t7 = (t0 + 8000);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast_port(t7);

LAB4:    xsi_set_current_line(30, ng0);

LAB17:    t2 = (t0 + 7728);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(31, ng0);
    t19 = (t0 + 12126);
    t21 = (t0 + 8000);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t19, 4U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB4;

LAB6:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 12130);
    t7 = (t0 + 8000);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB7:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 12134);
    t7 = (t0 + 8000);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB8:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 12138);
    t7 = (t0 + 8000);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 7728);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_3243397463_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 4680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 12146);
    t9 = xsi_mem_cmp(t7, t2, 6U);
    if (t9 == 1)
        goto LAB5;

LAB10:    t10 = (t0 + 12152);
    t12 = xsi_mem_cmp(t10, t2, 6U);
    if (t12 == 1)
        goto LAB6;

LAB11:    t13 = (t0 + 12158);
    t15 = xsi_mem_cmp(t13, t2, 6U);
    if (t15 == 1)
        goto LAB7;

LAB12:    t16 = (t0 + 12164);
    t18 = xsi_mem_cmp(t16, t2, 6U);
    if (t18 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 8064);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(38, ng0);

LAB17:    t2 = (t0 + 7744);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(39, ng0);
    t19 = (t0 + 8064);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast(t19);
    goto LAB4;

LAB6:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 8064);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 8064);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 8064);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 7744);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_3243397463_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 4928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 12170);
    t9 = xsi_mem_cmp(t7, t2, 6U);
    if (t9 == 1)
        goto LAB5;

LAB10:    t10 = (t0 + 12176);
    t12 = xsi_mem_cmp(t10, t2, 6U);
    if (t12 == 1)
        goto LAB6;

LAB11:    t13 = (t0 + 12182);
    t15 = xsi_mem_cmp(t13, t2, 6U);
    if (t15 == 1)
        goto LAB7;

LAB12:    t16 = (t0 + 12188);
    t18 = xsi_mem_cmp(t16, t2, 6U);
    if (t18 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 8128);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(45, ng0);

LAB17:    t2 = (t0 + 7760);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(46, ng0);
    t19 = (t0 + 8128);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast(t19);
    goto LAB4;

LAB6:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 8128);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 8128);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 8128);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 7760);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_3243397463_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 5176U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 12194);
    t9 = xsi_mem_cmp(t7, t2, 6U);
    if (t9 == 1)
        goto LAB5;

LAB10:    t10 = (t0 + 12200);
    t12 = xsi_mem_cmp(t10, t2, 6U);
    if (t12 == 1)
        goto LAB6;

LAB11:    t13 = (t0 + 12206);
    t15 = xsi_mem_cmp(t13, t2, 6U);
    if (t15 == 1)
        goto LAB7;

LAB12:    t16 = (t0 + 12212);
    t18 = xsi_mem_cmp(t16, t2, 6U);
    if (t18 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 8192);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(53, ng0);

LAB17:    t2 = (t0 + 7776);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(54, ng0);
    t19 = (t0 + 8192);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast(t19);
    goto LAB4;

LAB6:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 8192);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 8192);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 8192);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 7776);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_3243397463_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 5424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 12218);
    t9 = xsi_mem_cmp(t7, t2, 6U);
    if (t9 == 1)
        goto LAB5;

LAB10:    t10 = (t0 + 12224);
    t12 = xsi_mem_cmp(t10, t2, 6U);
    if (t12 == 1)
        goto LAB6;

LAB11:    t13 = (t0 + 12230);
    t15 = xsi_mem_cmp(t13, t2, 6U);
    if (t15 == 1)
        goto LAB7;

LAB12:    t16 = (t0 + 12236);
    t18 = xsi_mem_cmp(t16, t2, 6U);
    if (t18 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 8256);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(60, ng0);

LAB17:    t2 = (t0 + 7792);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(61, ng0);
    t19 = (t0 + 8256);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast(t19);
    goto LAB4;

LAB6:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 8256);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 8256);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 8256);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 7792);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_3243397463_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 12242);
    t9 = xsi_mem_cmp(t7, t2, 6U);
    if (t9 == 1)
        goto LAB5;

LAB10:    t10 = (t0 + 12248);
    t12 = xsi_mem_cmp(t10, t2, 6U);
    if (t12 == 1)
        goto LAB6;

LAB11:    t13 = (t0 + 12254);
    t15 = xsi_mem_cmp(t13, t2, 6U);
    if (t15 == 1)
        goto LAB7;

LAB12:    t16 = (t0 + 12260);
    t18 = xsi_mem_cmp(t16, t2, 6U);
    if (t18 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 8320);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(67, ng0);

LAB17:    t2 = (t0 + 7808);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(68, ng0);
    t19 = (t0 + 8320);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t19);
    goto LAB4;

LAB6:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 8320);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 8320);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 8320);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 7808);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_3243397463_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 5920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 12266);
    t9 = xsi_mem_cmp(t7, t2, 6U);
    if (t9 == 1)
        goto LAB5;

LAB10:    t10 = (t0 + 12272);
    t12 = xsi_mem_cmp(t10, t2, 6U);
    if (t12 == 1)
        goto LAB6;

LAB11:    t13 = (t0 + 12278);
    t15 = xsi_mem_cmp(t13, t2, 6U);
    if (t15 == 1)
        goto LAB7;

LAB12:    t16 = (t0 + 12284);
    t18 = xsi_mem_cmp(t16, t2, 6U);
    if (t18 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 8384);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(74, ng0);

LAB17:    t2 = (t0 + 7824);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(75, ng0);
    t19 = (t0 + 8384);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t19);
    goto LAB4;

LAB6:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 8384);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 8384);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 8384);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 7824);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_3243397463_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 6168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 12290);
    t9 = xsi_mem_cmp(t7, t2, 6U);
    if (t9 == 1)
        goto LAB5;

LAB10:    t10 = (t0 + 12296);
    t12 = xsi_mem_cmp(t10, t2, 6U);
    if (t12 == 1)
        goto LAB6;

LAB11:    t13 = (t0 + 12302);
    t15 = xsi_mem_cmp(t13, t2, 6U);
    if (t15 == 1)
        goto LAB7;

LAB12:    t16 = (t0 + 12308);
    t18 = xsi_mem_cmp(t16, t2, 6U);
    if (t18 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 8448);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(81, ng0);

LAB17:    t2 = (t0 + 7840);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(82, ng0);
    t19 = (t0 + 8448);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast(t19);
    goto LAB4;

LAB6:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 8448);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 8448);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 8448);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 7840);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_3243397463_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(91, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8512);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7856);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3243397463_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(92, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8576);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7872);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3243397463_3212880686_p_10(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(93, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8640);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7888);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3243397463_3212880686_p_11(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(94, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8704);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7904);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3243397463_3212880686_p_12(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(95, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8768);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7920);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3243397463_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3243397463_3212880686_p_0,(void *)work_a_3243397463_3212880686_p_1,(void *)work_a_3243397463_3212880686_p_2,(void *)work_a_3243397463_3212880686_p_3,(void *)work_a_3243397463_3212880686_p_4,(void *)work_a_3243397463_3212880686_p_5,(void *)work_a_3243397463_3212880686_p_6,(void *)work_a_3243397463_3212880686_p_7,(void *)work_a_3243397463_3212880686_p_8,(void *)work_a_3243397463_3212880686_p_9,(void *)work_a_3243397463_3212880686_p_10,(void *)work_a_3243397463_3212880686_p_11,(void *)work_a_3243397463_3212880686_p_12};
	xsi_register_didat("work_a_3243397463_3212880686", "isim/CPU_TEST_isim_beh.exe.sim/work/a_3243397463_3212880686.didat");
	xsi_register_executes(pe);
}
