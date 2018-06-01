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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/hhu/Compilateur/Compilateur_VHDL/Compilateur_VHDL/decodeur.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2500286246_3212880686_p_0(char *t0)
{
    char t9[16];
    char t11[16];
    char t16[16];
    char *t1;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 7016);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t5 = (31 - 31);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t10 = ((IEEE_P_2592010699) + 4000);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 7;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (7 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t16 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 31;
    t17 = (t13 + 4U);
    *((int *)t17) = 24;
    t17 = (t13 + 8U);
    *((int *)t17) = -1;
    t18 = (24 - 31);
    t15 = (t18 * -1);
    t15 = (t15 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t15;
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t1, t11, (char)97, t3, t16, (char)101);
    t15 = (8U + 8U);
    t19 = (16U != t15);
    if (t19 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 4440);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 16U);
    xsi_driver_first_trans_fast(t17);

LAB2:    t24 = (t0 + 4296);
    *((int *)t24) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t15, 0);
    goto LAB6;

}

static void work_a_2500286246_3212880686_p_1(char *t0)
{
    char t9[16];
    char t11[16];
    char t16[16];
    char *t1;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (t0 + 7024);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t5 = (31 - 31);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t10 = ((IEEE_P_2592010699) + 4000);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 7;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (7 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t16 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 31;
    t17 = (t13 + 4U);
    *((int *)t17) = 24;
    t17 = (t13 + 8U);
    *((int *)t17) = -1;
    t18 = (24 - 31);
    t15 = (t18 * -1);
    t15 = (t15 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t15;
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t1, t11, (char)97, t3, t16, (char)101);
    t15 = (8U + 8U);
    t19 = (16U != t15);
    if (t19 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 4504);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 16U);
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t24 = (t0 + 4312);
    *((int *)t24) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t15, 0);
    goto LAB6;

}

static void work_a_2500286246_3212880686_p_2(char *t0)
{
    char t42[16];
    char t44[16];
    char t49[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t43;
    char *t45;
    char *t46;
    int t47;
    unsigned int t48;
    char *t50;
    int t51;
    unsigned char t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;

LAB0:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t3 = (t0 + 7032);
    t6 = 1;
    if (16U == 16U)
        goto LAB11;

LAB12:    t6 = 0;

LAB13:    if (t6 == 1)
        goto LAB8;

LAB9:    t10 = (t0 + 1832U);
    t11 = *((char **)t10);
    t10 = (t0 + 7048);
    t13 = 1;
    if (16U == 16U)
        goto LAB17;

LAB18:    t13 = 0;

LAB19:    t2 = t13;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 1832U);
    t18 = *((char **)t17);
    t17 = (t0 + 7064);
    t20 = 1;
    if (16U == 16U)
        goto LAB23;

LAB24:    t20 = 0;

LAB25:    t1 = t20;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB29:    t34 = (t0 + 7080);
    t36 = (t0 + 1032U);
    t37 = *((char **)t36);
    t38 = (31 - 23);
    t39 = (t38 * 1U);
    t40 = (0 + t39);
    t36 = (t37 + t40);
    t43 = ((IEEE_P_2592010699) + 4000);
    t45 = (t44 + 0U);
    t46 = (t45 + 0U);
    *((int *)t46) = 0;
    t46 = (t45 + 4U);
    *((int *)t46) = 7;
    t46 = (t45 + 8U);
    *((int *)t46) = 1;
    t47 = (7 - 0);
    t48 = (t47 * 1);
    t48 = (t48 + 1);
    t46 = (t45 + 12U);
    *((unsigned int *)t46) = t48;
    t46 = (t49 + 0U);
    t50 = (t46 + 0U);
    *((int *)t50) = 23;
    t50 = (t46 + 4U);
    *((int *)t50) = 16;
    t50 = (t46 + 8U);
    *((int *)t50) = -1;
    t51 = (16 - 23);
    t48 = (t51 * -1);
    t48 = (t48 + 1);
    t50 = (t46 + 12U);
    *((unsigned int *)t50) = t48;
    t41 = xsi_base_array_concat(t41, t42, t43, (char)97, t34, t44, (char)97, t36, t49, (char)101);
    t48 = (8U + 8U);
    t52 = (16U != t48);
    if (t52 == 1)
        goto LAB31;

LAB32:    t50 = (t0 + 4568);
    t53 = (t50 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    memcpy(t56, t41, 16U);
    xsi_driver_first_trans_fast_port(t50);

LAB2:    t57 = (t0 + 4328);
    *((int *)t57) = 1;

LAB1:    return;
LAB3:    t24 = (t0 + 1032U);
    t25 = *((char **)t24);
    t26 = (31 - 23);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t24 = (t25 + t28);
    t29 = (t0 + 4568);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t24, 16U);
    xsi_driver_first_trans_fast_port(t29);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t7 = 0;

LAB14:    if (t7 < 16U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t8 = (t4 + t7);
    t9 = (t3 + t7);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB12;

LAB16:    t7 = (t7 + 1);
    goto LAB14;

LAB17:    t14 = 0;

LAB20:    if (t14 < 16U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t15 = (t11 + t14);
    t16 = (t10 + t14);
    if (*((unsigned char *)t15) != *((unsigned char *)t16))
        goto LAB18;

LAB22:    t14 = (t14 + 1);
    goto LAB20;

LAB23:    t21 = 0;

LAB26:    if (t21 < 16U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t22 = (t18 + t21);
    t23 = (t17 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB24;

LAB28:    t21 = (t21 + 1);
    goto LAB26;

LAB30:    goto LAB2;

LAB31:    xsi_size_not_matching(16U, t48, 0);
    goto LAB32;

}

static void work_a_2500286246_3212880686_p_3(char *t0)
{
    char t34[16];
    char t36[16];
    char t41[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t35;
    char *t37;
    char *t38;
    int t39;
    unsigned int t40;
    char *t42;
    int t43;
    unsigned char t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;

LAB0:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 7088);
    t5 = 1;
    if (16U == 16U)
        goto LAB8;

LAB9:    t5 = 0;

LAB10:    if (t5 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 1832U);
    t10 = *((char **)t9);
    t9 = (t0 + 7104);
    t12 = 1;
    if (16U == 16U)
        goto LAB14;

LAB15:    t12 = 0;

LAB16:    t1 = t12;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB20:    t26 = (t0 + 7120);
    t28 = (t0 + 1032U);
    t29 = *((char **)t28);
    t30 = (31 - 15);
    t31 = (t30 * 1U);
    t32 = (0 + t31);
    t28 = (t29 + t32);
    t35 = ((IEEE_P_2592010699) + 4000);
    t37 = (t36 + 0U);
    t38 = (t37 + 0U);
    *((int *)t38) = 0;
    t38 = (t37 + 4U);
    *((int *)t38) = 7;
    t38 = (t37 + 8U);
    *((int *)t38) = 1;
    t39 = (7 - 0);
    t40 = (t39 * 1);
    t40 = (t40 + 1);
    t38 = (t37 + 12U);
    *((unsigned int *)t38) = t40;
    t38 = (t41 + 0U);
    t42 = (t38 + 0U);
    *((int *)t42) = 15;
    t42 = (t38 + 4U);
    *((int *)t42) = 8;
    t42 = (t38 + 8U);
    *((int *)t42) = -1;
    t43 = (8 - 15);
    t40 = (t43 * -1);
    t40 = (t40 + 1);
    t42 = (t38 + 12U);
    *((unsigned int *)t42) = t40;
    t33 = xsi_base_array_concat(t33, t34, t35, (char)97, t26, t36, (char)97, t28, t41, (char)101);
    t40 = (8U + 8U);
    t44 = (16U != t40);
    if (t44 == 1)
        goto LAB22;

LAB23:    t42 = (t0 + 4632);
    t45 = (t42 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    memcpy(t48, t33, 16U);
    xsi_driver_first_trans_fast_port(t42);

LAB2:    t49 = (t0 + 4344);
    *((int *)t49) = 1;

LAB1:    return;
LAB3:    t16 = (t0 + 1032U);
    t17 = *((char **)t16);
    t18 = (31 - 15);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t16 = (t17 + t20);
    t21 = (t0 + 4632);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t16, 16U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t6 = 0;

LAB11:    if (t6 < 16U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t7 = (t3 + t6);
    t8 = (t2 + t6);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB9;

LAB13:    t6 = (t6 + 1);
    goto LAB11;

LAB14:    t13 = 0;

LAB17:    if (t13 < 16U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t14 = (t10 + t13);
    t15 = (t9 + t13);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB15;

LAB19:    t13 = (t13 + 1);
    goto LAB17;

LAB21:    goto LAB2;

LAB22:    xsi_size_not_matching(16U, t40, 0);
    goto LAB23;

}

static void work_a_2500286246_3212880686_p_4(char *t0)
{
    char t9[16];
    char t11[16];
    char t16[16];
    char *t1;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t1 = (t0 + 7128);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t5 = (31 - 7);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t10 = ((IEEE_P_2592010699) + 4000);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 7;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (7 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t16 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 7;
    t17 = (t13 + 4U);
    *((int *)t17) = 0;
    t17 = (t13 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 7);
    t15 = (t18 * -1);
    t15 = (t15 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t15;
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t1, t11, (char)97, t3, t16, (char)101);
    t15 = (8U + 8U);
    t19 = (16U != t15);
    if (t19 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 4696);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 16U);
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t24 = (t0 + 4360);
    *((int *)t24) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t15, 0);
    goto LAB6;

}


extern void work_a_2500286246_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2500286246_3212880686_p_0,(void *)work_a_2500286246_3212880686_p_1,(void *)work_a_2500286246_3212880686_p_2,(void *)work_a_2500286246_3212880686_p_3,(void *)work_a_2500286246_3212880686_p_4};
	xsi_register_didat("work_a_2500286246_3212880686", "isim/processeur_test_isim_beh.exe.sim/work/a_2500286246_3212880686.didat");
	xsi_register_executes(pe);
}
