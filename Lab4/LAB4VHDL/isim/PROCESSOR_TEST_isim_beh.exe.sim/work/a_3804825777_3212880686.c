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
static const char *ng0 = "C:/Users/vaila/Dropbox/ORGANWSH/Lab4/LAB4VHDL/UNPACKER.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3804825777_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (7 - 31);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (char *)((nl0) + t8);
    goto **((char **)t9);

LAB4:    xsi_set_current_line(19, ng0);

LAB9:    t2 = (t0 + 3648);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(20, ng0);
    t10 = (t0 + 5980);
    t12 = (t0 + 3760);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 24U);
    xsi_driver_first_trans_fast(t12);
    goto LAB4;

LAB6:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 6004);
    t9 = (t0 + 3760);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 24U);
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB7:    t3 = (t0 + 3648);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}

static void work_a_3804825777_3212880686_p_1(char *t0)
{
    char t24[16];
    char t25[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t26;
    unsigned char t27;

LAB0:    t1 = (t0 + 3080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6028);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 6032);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 6036);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 6040);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t21 = (31 - 31);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t2 = (t4 + t23);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 5848U);
    t10 = (t25 + 0U);
    t12 = (t10 + 0U);
    *((int *)t12) = 31;
    t12 = (t10 + 4U);
    *((int *)t12) = 24;
    t12 = (t10 + 8U);
    *((int *)t12) = -1;
    t5 = (24 - 31);
    t26 = (t5 * -1);
    t26 = (t26 + 1);
    t12 = (t10 + 12U);
    *((unsigned int *)t12) = t26;
    t6 = xsi_base_array_concat(t6, t24, t7, (char)97, t3, t9, (char)97, t2, t25, (char)101);
    t26 = (24U + 8U);
    t27 = (32U != t26);
    if (t27 == 1)
        goto LAB21;

LAB22:    t12 = (t0 + 3824);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 32U);
    xsi_driver_first_trans_fast(t12);

LAB4:    xsi_set_current_line(24, ng0);

LAB25:    t2 = (t0 + 3664);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(25, ng0);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t15 = (t0 + 3824);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 32U);
    xsi_driver_first_trans_fast(t15);
    goto LAB4;

LAB6:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t21 = (31 - 7);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t2 = (t4 + t23);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 5848U);
    t10 = (t25 + 0U);
    t12 = (t10 + 0U);
    *((int *)t12) = 7;
    t12 = (t10 + 4U);
    *((int *)t12) = 0;
    t12 = (t10 + 8U);
    *((int *)t12) = -1;
    t5 = (0 - 7);
    t26 = (t5 * -1);
    t26 = (t26 + 1);
    t12 = (t10 + 12U);
    *((unsigned int *)t12) = t26;
    t6 = xsi_base_array_concat(t6, t24, t7, (char)97, t3, t9, (char)97, t2, t25, (char)101);
    t26 = (24U + 8U);
    t27 = (32U != t26);
    if (t27 == 1)
        goto LAB15;

LAB16:    t12 = (t0 + 3824);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 32U);
    xsi_driver_first_trans_fast(t12);
    goto LAB4;

LAB7:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t21 = (31 - 15);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t2 = (t4 + t23);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 5848U);
    t10 = (t25 + 0U);
    t12 = (t10 + 0U);
    *((int *)t12) = 15;
    t12 = (t10 + 4U);
    *((int *)t12) = 8;
    t12 = (t10 + 8U);
    *((int *)t12) = -1;
    t5 = (8 - 15);
    t26 = (t5 * -1);
    t26 = (t26 + 1);
    t12 = (t10 + 12U);
    *((unsigned int *)t12) = t26;
    t6 = xsi_base_array_concat(t6, t24, t7, (char)97, t3, t9, (char)97, t2, t25, (char)101);
    t26 = (24U + 8U);
    t27 = (32U != t26);
    if (t27 == 1)
        goto LAB17;

LAB18:    t12 = (t0 + 3824);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 32U);
    xsi_driver_first_trans_fast(t12);
    goto LAB4;

LAB8:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t21 = (31 - 23);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t2 = (t4 + t23);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 5848U);
    t10 = (t25 + 0U);
    t12 = (t10 + 0U);
    *((int *)t12) = 23;
    t12 = (t10 + 4U);
    *((int *)t12) = 16;
    t12 = (t10 + 8U);
    *((int *)t12) = -1;
    t5 = (16 - 23);
    t26 = (t5 * -1);
    t26 = (t26 + 1);
    t12 = (t10 + 12U);
    *((unsigned int *)t12) = t26;
    t6 = xsi_base_array_concat(t6, t24, t7, (char)97, t3, t9, (char)97, t2, t25, (char)101);
    t26 = (24U + 8U);
    t27 = (32U != t26);
    if (t27 == 1)
        goto LAB19;

LAB20:    t12 = (t0 + 3824);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 32U);
    xsi_driver_first_trans_fast(t12);
    goto LAB4;

LAB14:;
LAB15:    xsi_size_not_matching(32U, t26, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(32U, t26, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(32U, t26, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(32U, t26, 0);
    goto LAB22;

LAB23:    t3 = (t0 + 3664);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_3804825777_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(31, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3888);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3680);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3804825777_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3804825777_3212880686_p_0,(void *)work_a_3804825777_3212880686_p_1,(void *)work_a_3804825777_3212880686_p_2};
	xsi_register_didat("work_a_3804825777_3212880686", "isim/PROCESSOR_TEST_isim_beh.exe.sim/work/a_3804825777_3212880686.didat");
	xsi_register_executes(pe);
}
