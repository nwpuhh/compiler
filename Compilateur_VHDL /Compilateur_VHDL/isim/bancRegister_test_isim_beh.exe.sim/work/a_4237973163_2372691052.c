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
static const char *ng0 = "/home/hhu/Compilateur/Compilateur_VHDL/Compilateur_VHDL/bancRegister_test.vhd";



static void work_a_4237973163_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4216);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3392);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 4216);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3392);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_4237973163_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int64 t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int64 t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    t1 = (t0 + 3832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(102, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3640);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2608U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 3640);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4280);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t3 = (350 * 1000LL);
    t9 = (t0 + 4280);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t3);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 4344);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4408);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 1;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t3 = (100 * 1000LL);
    t9 = (t0 + 4408);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = 2;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t3);
    t5 = (200 * 1000LL);
    t14 = (t0 + 4408);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((int *)t18) = 3;
    xsi_driver_subsequent_trans_delta(t14, 0U, 1, t5);
    t19 = (300 * 1000LL);
    t20 = (t0 + 4408);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((int *)t24) = 4;
    xsi_driver_subsequent_trans_delta(t20, 0U, 1, t19);
    t25 = (400 * 1000LL);
    t26 = (t0 + 4408);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((int *)t30) = 4;
    xsi_driver_subsequent_trans_delta(t26, 0U, 1, t25);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 4472);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 15;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t3 = (100 * 1000LL);
    t9 = (t0 + 4472);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = 1;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t3);
    t5 = (200 * 1000LL);
    t14 = (t0 + 4472);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((int *)t18) = 3;
    xsi_driver_subsequent_trans_delta(t14, 0U, 1, t5);
    t19 = (300 * 1000LL);
    t20 = (t0 + 4472);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((int *)t24) = 4;
    xsi_driver_subsequent_trans_delta(t20, 0U, 1, t19);
    t25 = (400 * 1000LL);
    t26 = (t0 + 4472);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((int *)t30) = 5;
    xsi_driver_subsequent_trans_delta(t26, 0U, 1, t25);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 4536);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 15;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t3 = (100 * 1000LL);
    t9 = (t0 + 4536);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = 2;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t3);
    t5 = (200 * 1000LL);
    t14 = (t0 + 4536);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((int *)t18) = 2;
    xsi_driver_subsequent_trans_delta(t14, 0U, 1, t5);
    t19 = (300 * 1000LL);
    t20 = (t0 + 4536);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((int *)t24) = 4;
    xsi_driver_subsequent_trans_delta(t20, 0U, 1, t19);
    t25 = (400 * 1000LL);
    t26 = (t0 + 4536);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((int *)t30) = 3;
    xsi_driver_subsequent_trans_delta(t26, 0U, 1, t25);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 7632);
    t6 = (t0 + 4600);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_delta(t6, 0U, 16U, 0LL);
    t3 = (100 * 1000LL);
    t11 = (t0 + 7648);
    t13 = (t0 + 4600);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 16U);
    xsi_driver_subsequent_trans_delta(t13, 0U, 16U, t3);
    t5 = (200 * 1000LL);
    t18 = (t0 + 7664);
    t21 = (t0 + 4600);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t26 = *((char **)t24);
    memcpy(t26, t18, 16U);
    xsi_driver_subsequent_trans_delta(t21, 0U, 16U, t5);
    t19 = (300 * 1000LL);
    t27 = (t0 + 7680);
    t29 = (t0 + 4600);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t27, 16U);
    xsi_driver_subsequent_trans_delta(t29, 0U, 16U, t19);
    t25 = (400 * 1000LL);
    t34 = (t0 + 7696);
    t36 = (t0 + 4600);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t34, 16U);
    xsi_driver_subsequent_trans_delta(t36, 0U, 16U, t25);
    xsi_set_current_line(113, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_4237973163_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4237973163_2372691052_p_0,(void *)work_a_4237973163_2372691052_p_1};
	xsi_register_didat("work_a_4237973163_2372691052", "isim/bancRegister_test_isim_beh.exe.sim/work/a_4237973163_2372691052.didat");
	xsi_register_executes(pe);
}
