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
static const char *ng0 = "C:/Users/vaila/Dropbox/ORGANWSH/Lab4/LAB4VHDL/DECSTAGE.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_0774719531;

char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);


static void work_a_3967920148_3212880686_p_0(char *t0)
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

LAB0:    t1 = (t0 + 5072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (15 - 31);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (char *)((nl0) + t8);
    goto **((char **)t9);

LAB4:    xsi_set_current_line(108, ng0);

LAB9:    t2 = (t0 + 5888);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(109, ng0);
    t10 = (t0 + 10083);
    t12 = (t0 + 6000);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 16U);
    xsi_driver_first_trans_fast(t12);
    goto LAB4;

LAB6:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 10099);
    t9 = (t0 + 6000);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 16U);
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB7:    t3 = (t0 + 5888);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}

static void work_a_3967920148_3212880686_p_1(char *t0)
{
    char t62[16];
    char t65[16];
    char t75[16];
    char t76[16];
    char t77[16];
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
    char *t14;
    int t15;
    char *t16;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    char *t26;
    int t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    int t33;
    char *t34;
    int t36;
    char *t37;
    int t39;
    char *t40;
    int t42;
    char *t43;
    int t45;
    char *t46;
    int t48;
    char *t49;
    int t51;
    char *t52;
    int t54;
    char *t55;
    char *t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t63;
    char *t64;
    char *t66;
    char *t67;
    int t68;
    unsigned int t69;
    unsigned char t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    unsigned int t78;

LAB0:    t1 = (t0 + 5320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 10115);
    t9 = xsi_mem_cmp(t7, t2, 6U);
    if (t9 == 1)
        goto LAB5;

LAB22:    t10 = (t0 + 10121);
    t12 = xsi_mem_cmp(t10, t2, 6U);
    if (t12 == 1)
        goto LAB6;

LAB23:    t13 = (t0 + 10127);
    t15 = xsi_mem_cmp(t13, t2, 6U);
    if (t15 == 1)
        goto LAB7;

LAB24:    t16 = (t0 + 10133);
    t18 = xsi_mem_cmp(t16, t2, 6U);
    if (t18 == 1)
        goto LAB8;

LAB25:    t19 = (t0 + 10139);
    t21 = xsi_mem_cmp(t19, t2, 6U);
    if (t21 == 1)
        goto LAB9;

LAB26:    t22 = (t0 + 10145);
    t24 = xsi_mem_cmp(t22, t2, 6U);
    if (t24 == 1)
        goto LAB10;

LAB27:    t25 = (t0 + 10151);
    t27 = xsi_mem_cmp(t25, t2, 6U);
    if (t27 == 1)
        goto LAB11;

LAB28:    t28 = (t0 + 10157);
    t30 = xsi_mem_cmp(t28, t2, 6U);
    if (t30 == 1)
        goto LAB12;

LAB29:    t31 = (t0 + 10163);
    t33 = xsi_mem_cmp(t31, t2, 6U);
    if (t33 == 1)
        goto LAB13;

LAB30:    t34 = (t0 + 10169);
    t36 = xsi_mem_cmp(t34, t2, 6U);
    if (t36 == 1)
        goto LAB14;

LAB31:    t37 = (t0 + 10175);
    t39 = xsi_mem_cmp(t37, t2, 6U);
    if (t39 == 1)
        goto LAB15;

LAB32:    t40 = (t0 + 10181);
    t42 = xsi_mem_cmp(t40, t2, 6U);
    if (t42 == 1)
        goto LAB16;

LAB33:    t43 = (t0 + 10187);
    t45 = xsi_mem_cmp(t43, t2, 6U);
    if (t45 == 1)
        goto LAB17;

LAB34:    t46 = (t0 + 10193);
    t48 = xsi_mem_cmp(t46, t2, 6U);
    if (t48 == 1)
        goto LAB18;

LAB35:    t49 = (t0 + 10199);
    t51 = xsi_mem_cmp(t49, t2, 6U);
    if (t51 == 1)
        goto LAB19;

LAB36:    t52 = (t0 + 10205);
    t54 = xsi_mem_cmp(t52, t2, 6U);
    if (t54 == 1)
        goto LAB20;

LAB37:
LAB21:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 10267);
    t7 = (t0 + 6064);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast(t7);

LAB4:    xsi_set_current_line(113, ng0);

LAB73:    t2 = (t0 + 5904);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB74;

LAB1:    return;
LAB5:    xsi_set_current_line(115, ng0);
    t55 = (t0 + 3592U);
    t56 = *((char **)t55);
    t55 = (t0 + 1032U);
    t57 = *((char **)t55);
    t58 = (31 - 15);
    t59 = (t58 * 1U);
    t60 = (0 + t59);
    t55 = (t57 + t60);
    t63 = ((IEEE_P_2592010699) + 4024);
    t64 = (t0 + 9744U);
    t66 = (t65 + 0U);
    t67 = (t66 + 0U);
    *((int *)t67) = 15;
    t67 = (t66 + 4U);
    *((int *)t67) = 0;
    t67 = (t66 + 8U);
    *((int *)t67) = -1;
    t68 = (0 - 15);
    t69 = (t68 * -1);
    t69 = (t69 + 1);
    t67 = (t66 + 12U);
    *((unsigned int *)t67) = t69;
    t61 = xsi_base_array_concat(t61, t62, t63, (char)97, t56, t64, (char)97, t55, t65, (char)101);
    t69 = (16U + 16U);
    t70 = (32U != t69);
    if (t70 == 1)
        goto LAB39;

LAB40:    t67 = (t0 + 6064);
    t71 = (t67 + 56U);
    t72 = *((char **)t71);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    memcpy(t74, t61, 32U);
    xsi_driver_first_trans_fast(t67);
    goto LAB4;

LAB6:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 10211);
    t11 = ((IEEE_P_2592010699) + 4024);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 15;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 15);
    t58 = (t9 * -1);
    t58 = (t58 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t58;
    t14 = (t75 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 0;
    t16 = (t14 + 4U);
    *((int *)t16) = 15;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t12 = (15 - 0);
    t58 = (t12 * 1);
    t58 = (t58 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t58;
    t10 = xsi_base_array_concat(t10, t62, t11, (char)97, t2, t65, (char)97, t7, t75, (char)101);
    t58 = (16U + 16U);
    t70 = (32U != t58);
    if (t70 == 1)
        goto LAB41;

LAB42:    t16 = (t0 + 6064);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t10, 32U);
    xsi_driver_first_trans_fast(t16);
    goto LAB4;

LAB7:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t7 + t6);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 9744U);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 15;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 15);
    t58 = (t9 * -1);
    t58 = (t58 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t58;
    t8 = xsi_base_array_concat(t8, t62, t10, (char)97, t3, t11, (char)97, t2, t65, (char)101);
    t58 = (16U + 16U);
    t70 = (32U != t58);
    if (t70 == 1)
        goto LAB43;

LAB44:    t14 = (t0 + 6064);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_fast(t14);
    goto LAB4;

LAB8:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 10227);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t7 = (t8 + t6);
    t11 = ((IEEE_P_2592010699) + 4024);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 15;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t9 = (15 - 0);
    t58 = (t9 * 1);
    t58 = (t58 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t58;
    t14 = (t75 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 15;
    t16 = (t14 + 4U);
    *((int *)t16) = 0;
    t16 = (t14 + 8U);
    *((int *)t16) = -1;
    t12 = (0 - 15);
    t58 = (t12 * -1);
    t58 = (t58 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t58;
    t10 = xsi_base_array_concat(t10, t62, t11, (char)97, t2, t65, (char)97, t7, t75, (char)101);
    t58 = (16U + 16U);
    t70 = (32U != t58);
    if (t70 == 1)
        goto LAB45;

LAB46:    t16 = (t0 + 6064);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t10, 32U);
    xsi_driver_first_trans_fast(t16);
    goto LAB4;

LAB9:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 10243);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t7 = (t8 + t6);
    t11 = ((IEEE_P_2592010699) + 4024);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 15;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t9 = (15 - 0);
    t58 = (t9 * 1);
    t58 = (t58 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t58;
    t14 = (t75 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 15;
    t16 = (t14 + 4U);
    *((int *)t16) = 0;
    t16 = (t14 + 8U);
    *((int *)t16) = -1;
    t12 = (0 - 15);
    t58 = (t12 * -1);
    t58 = (t58 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t58;
    t10 = xsi_base_array_concat(t10, t62, t11, (char)97, t2, t65, (char)97, t7, t75, (char)101);
    t58 = (16U + 16U);
    t70 = (32U != t58);
    if (t70 == 1)
        goto LAB47;

LAB48:    t16 = (t0 + 6064);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t10, 32U);
    xsi_driver_first_trans_fast(t16);
    goto LAB4;

LAB10:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t4 = (15 - 13);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t58 = (31 - 15);
    t59 = (t58 * 1U);
    t60 = (0 + t59);
    t7 = (t8 + t60);
    t11 = ((IEEE_P_2592010699) + 4024);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 13;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 13);
    t69 = (t9 * -1);
    t69 = (t69 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t69;
    t14 = (t75 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 15;
    t16 = (t14 + 4U);
    *((int *)t16) = 0;
    t16 = (t14 + 8U);
    *((int *)t16) = -1;
    t12 = (0 - 15);
    t69 = (t12 * -1);
    t69 = (t69 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t69;
    t10 = xsi_base_array_concat(t10, t62, t11, (char)97, t2, t65, (char)97, t7, t75, (char)101);
    t16 = (t0 + 10259);
    t20 = ((IEEE_P_2592010699) + 4024);
    t22 = (t77 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 1;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t15 = (1 - 0);
    t69 = (t15 * 1);
    t69 = (t69 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t69;
    t19 = xsi_base_array_concat(t19, t76, t20, (char)97, t10, t62, (char)97, t16, t77, (char)101);
    t69 = (14U + 16U);
    t78 = (t69 + 2U);
    t70 = (32U != t78);
    if (t70 == 1)
        goto LAB49;

LAB50:    t23 = (t0 + 6064);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    t28 = (t26 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t19, 32U);
    xsi_driver_first_trans_fast(t23);
    goto LAB4;

LAB11:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t4 = (15 - 13);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t58 = (31 - 15);
    t59 = (t58 * 1U);
    t60 = (0 + t59);
    t7 = (t8 + t60);
    t11 = ((IEEE_P_2592010699) + 4024);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 13;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 13);
    t69 = (t9 * -1);
    t69 = (t69 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t69;
    t14 = (t75 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 15;
    t16 = (t14 + 4U);
    *((int *)t16) = 0;
    t16 = (t14 + 8U);
    *((int *)t16) = -1;
    t12 = (0 - 15);
    t69 = (t12 * -1);
    t69 = (t69 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t69;
    t10 = xsi_base_array_concat(t10, t62, t11, (char)97, t2, t65, (char)97, t7, t75, (char)101);
    t16 = (t0 + 10261);
    t20 = ((IEEE_P_2592010699) + 4024);
    t22 = (t77 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 1;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t15 = (1 - 0);
    t69 = (t15 * 1);
    t69 = (t69 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t69;
    t19 = xsi_base_array_concat(t19, t76, t20, (char)97, t10, t62, (char)97, t16, t77, (char)101);
    t69 = (14U + 16U);
    t78 = (t69 + 2U);
    t70 = (32U != t78);
    if (t70 == 1)
        goto LAB51;

LAB52:    t23 = (t0 + 6064);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    t28 = (t26 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t19, 32U);
    xsi_driver_first_trans_fast(t23);
    goto LAB4;

LAB12:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t4 = (15 - 13);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t58 = (31 - 15);
    t59 = (t58 * 1U);
    t60 = (0 + t59);
    t7 = (t8 + t60);
    t11 = ((IEEE_P_2592010699) + 4024);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 13;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 13);
    t69 = (t9 * -1);
    t69 = (t69 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t69;
    t14 = (t75 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 15;
    t16 = (t14 + 4U);
    *((int *)t16) = 0;
    t16 = (t14 + 8U);
    *((int *)t16) = -1;
    t12 = (0 - 15);
    t69 = (t12 * -1);
    t69 = (t69 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t69;
    t10 = xsi_base_array_concat(t10, t62, t11, (char)97, t2, t65, (char)97, t7, t75, (char)101);
    t16 = (t0 + 10263);
    t20 = ((IEEE_P_2592010699) + 4024);
    t22 = (t77 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 1;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t15 = (1 - 0);
    t69 = (t15 * 1);
    t69 = (t69 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t69;
    t19 = xsi_base_array_concat(t19, t76, t20, (char)97, t10, t62, (char)97, t16, t77, (char)101);
    t69 = (14U + 16U);
    t78 = (t69 + 2U);
    t70 = (32U != t78);
    if (t70 == 1)
        goto LAB53;

LAB54:    t23 = (t0 + 6064);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    t28 = (t26 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t19, 32U);
    xsi_driver_first_trans_fast(t23);
    goto LAB4;

LAB13:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t7 + t6);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 9744U);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 15;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 15);
    t58 = (t9 * -1);
    t58 = (t58 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t58;
    t8 = xsi_base_array_concat(t8, t62, t10, (char)97, t3, t11, (char)97, t2, t65, (char)101);
    t58 = (16U + 16U);
    t70 = (32U != t58);
    if (t70 == 1)
        goto LAB55;

LAB56:    t14 = (t0 + 6064);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_fast(t14);
    goto LAB4;

LAB14:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t7 + t6);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 9744U);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 15;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 15);
    t58 = (t9 * -1);
    t58 = (t58 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t58;
    t8 = xsi_base_array_concat(t8, t62, t10, (char)97, t3, t11, (char)97, t2, t65, (char)101);
    t58 = (16U + 16U);
    t70 = (32U != t58);
    if (t70 == 1)
        goto LAB57;

LAB58:    t14 = (t0 + 6064);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_fast(t14);
    goto LAB4;

LAB15:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t7 + t6);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 9744U);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 15;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 15);
    t58 = (t9 * -1);
    t58 = (t58 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t58;
    t8 = xsi_base_array_concat(t8, t62, t10, (char)97, t3, t11, (char)97, t2, t65, (char)101);
    t58 = (16U + 16U);
    t70 = (32U != t58);
    if (t70 == 1)
        goto LAB59;

LAB60:    t14 = (t0 + 6064);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_fast(t14);
    goto LAB4;

LAB16:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t7 + t6);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 9744U);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 15;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 15);
    t58 = (t9 * -1);
    t58 = (t58 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t58;
    t8 = xsi_base_array_concat(t8, t62, t10, (char)97, t3, t11, (char)97, t2, t65, (char)101);
    t58 = (16U + 16U);
    t70 = (32U != t58);
    if (t70 == 1)
        goto LAB61;

LAB62:    t14 = (t0 + 6064);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_fast(t14);
    goto LAB4;

LAB17:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t4 = (15 - 13);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t58 = (31 - 15);
    t59 = (t58 * 1U);
    t60 = (0 + t59);
    t7 = (t8 + t60);
    t11 = ((IEEE_P_2592010699) + 4024);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 13;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 13);
    t69 = (t9 * -1);
    t69 = (t69 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t69;
    t14 = (t75 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 15;
    t16 = (t14 + 4U);
    *((int *)t16) = 0;
    t16 = (t14 + 8U);
    *((int *)t16) = -1;
    t12 = (0 - 15);
    t69 = (t12 * -1);
    t69 = (t69 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t69;
    t10 = xsi_base_array_concat(t10, t62, t11, (char)97, t2, t65, (char)97, t7, t75, (char)101);
    t16 = (t0 + 10265);
    t20 = ((IEEE_P_2592010699) + 4024);
    t22 = (t77 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 1;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t15 = (1 - 0);
    t69 = (t15 * 1);
    t69 = (t69 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t69;
    t19 = xsi_base_array_concat(t19, t76, t20, (char)97, t10, t62, (char)97, t16, t77, (char)101);
    t69 = (14U + 16U);
    t78 = (t69 + 2U);
    t70 = (32U != t78);
    if (t70 == 1)
        goto LAB63;

LAB64:    t23 = (t0 + 6064);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    t28 = (t26 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t19, 32U);
    xsi_driver_first_trans_fast(t23);
    goto LAB4;

LAB18:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t7 + t6);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 9744U);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 15;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 15);
    t58 = (t9 * -1);
    t58 = (t58 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t58;
    t8 = xsi_base_array_concat(t8, t62, t10, (char)97, t3, t11, (char)97, t2, t65, (char)101);
    t58 = (16U + 16U);
    t70 = (32U != t58);
    if (t70 == 1)
        goto LAB65;

LAB66:    t14 = (t0 + 6064);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_fast(t14);
    goto LAB4;

LAB19:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t7 + t6);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 9744U);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 15;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 15);
    t58 = (t9 * -1);
    t58 = (t58 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t58;
    t8 = xsi_base_array_concat(t8, t62, t10, (char)97, t3, t11, (char)97, t2, t65, (char)101);
    t58 = (16U + 16U);
    t70 = (32U != t58);
    if (t70 == 1)
        goto LAB67;

LAB68:    t14 = (t0 + 6064);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_fast(t14);
    goto LAB4;

LAB20:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t7 + t6);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 9744U);
    t13 = (t65 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 15;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 15);
    t58 = (t9 * -1);
    t58 = (t58 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t58;
    t8 = xsi_base_array_concat(t8, t62, t10, (char)97, t3, t11, (char)97, t2, t65, (char)101);
    t58 = (16U + 16U);
    t70 = (32U != t58);
    if (t70 == 1)
        goto LAB69;

LAB70:    t14 = (t0 + 6064);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_fast(t14);
    goto LAB4;

LAB38:;
LAB39:    xsi_size_not_matching(32U, t69, 0);
    goto LAB40;

LAB41:    xsi_size_not_matching(32U, t58, 0);
    goto LAB42;

LAB43:    xsi_size_not_matching(32U, t58, 0);
    goto LAB44;

LAB45:    xsi_size_not_matching(32U, t58, 0);
    goto LAB46;

LAB47:    xsi_size_not_matching(32U, t58, 0);
    goto LAB48;

LAB49:    xsi_size_not_matching(32U, t78, 0);
    goto LAB50;

LAB51:    xsi_size_not_matching(32U, t78, 0);
    goto LAB52;

LAB53:    xsi_size_not_matching(32U, t78, 0);
    goto LAB54;

LAB55:    xsi_size_not_matching(32U, t58, 0);
    goto LAB56;

LAB57:    xsi_size_not_matching(32U, t58, 0);
    goto LAB58;

LAB59:    xsi_size_not_matching(32U, t58, 0);
    goto LAB60;

LAB61:    xsi_size_not_matching(32U, t58, 0);
    goto LAB62;

LAB63:    xsi_size_not_matching(32U, t78, 0);
    goto LAB64;

LAB65:    xsi_size_not_matching(32U, t58, 0);
    goto LAB66;

LAB67:    xsi_size_not_matching(32U, t58, 0);
    goto LAB68;

LAB69:    xsi_size_not_matching(32U, t58, 0);
    goto LAB70;

LAB71:    t3 = (t0 + 5904);
    *((int *)t3) = 0;
    goto LAB2;

LAB72:    goto LAB71;

LAB74:    goto LAB72;

}

static void work_a_3967920148_3212880686_p_2(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(134, ng0);

LAB3:    t2 = (t0 + 3912U);
    t3 = *((char **)t2);
    t2 = (t0 + 9776U);
    t4 = (t0 + 2632U);
    t5 = *((char **)t4);
    t4 = (t0 + 9664U);
    t6 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (32U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 6128);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t16 = (t0 + 5920);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t9, 0);
    goto LAB6;

}


extern void work_a_3967920148_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3967920148_3212880686_p_0,(void *)work_a_3967920148_3212880686_p_1,(void *)work_a_3967920148_3212880686_p_2};
	xsi_register_didat("work_a_3967920148_3212880686", "isim/PROCESSOR_TEST_isim_beh.exe.sim/work/a_3967920148_3212880686.didat");
	xsi_register_executes(pe);
}
