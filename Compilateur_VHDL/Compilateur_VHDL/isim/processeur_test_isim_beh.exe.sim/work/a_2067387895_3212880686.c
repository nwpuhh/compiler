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
static const char *ng0 = "/home/hhu/Compilateur/Compilateur_VHDL/Compilateur_VHDL/bancRegistres.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_2067387895_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned int t12;
    char *t13;
    unsigned char t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    int t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4600);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(58, ng0);
    t4 = xsi_get_transient_memory(256U);
    memset(t4, 0, 256U);
    t11 = t4;
    t12 = (16U * 1U);
    t13 = t11;
    memset(t13, (unsigned char)2, t12);
    t14 = (t12 != 0);
    if (t14 == 1)
        goto LAB11;

LAB12:    t16 = (t0 + 4712);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t4, 256U);
    xsi_driver_first_trans_fast(t16);
    goto LAB9;

LAB11:    t15 = (256U / t12);
    xsi_mem_set_data(t11, t11, t12, t15);
    goto LAB12;

LAB13:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 1672U);
    t8 = *((char **)t2);
    t2 = (t0 + 7624U);
    t21 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t8, t2);
    t22 = (t21 - 0);
    t12 = (t22 * 1);
    t15 = (16U * t12);
    t23 = (0U + t15);
    t11 = (t0 + 4712);
    t13 = (t11 + 56U);
    t16 = *((char **)t13);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t5, 16U);
    xsi_driver_first_trans_delta(t11, t23, 16U, 0LL);
    goto LAB9;

}

static void work_a_2067387895_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t16 = (t0 + 2472U);
    t17 = *((char **)t16);
    t16 = (t0 + 1352U);
    t18 = *((char **)t16);
    t16 = (t0 + 7592U);
    t19 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t18, t16);
    t20 = (t19 - 0);
    t21 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t19);
    t22 = (16U * t21);
    t23 = (0 + t22);
    t24 = (t17 + t23);
    t25 = (t0 + 4776);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t24, 16U);
    xsi_driver_first_trans_fast_port(t25);

LAB2:    t30 = (t0 + 4616);
    *((int *)t30) = 1;

LAB1:    return;
LAB3:    t10 = (t0 + 1992U);
    t11 = *((char **)t10);
    t10 = (t0 + 4776);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB5:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t2 = (t0 + 7624U);
    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t7 = (t0 + 7592U);
    t9 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t6, t2, t8, t7);
    t1 = t9;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_2067387895_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t16 = (t0 + 2472U);
    t17 = *((char **)t16);
    t16 = (t0 + 1512U);
    t18 = *((char **)t16);
    t16 = (t0 + 7608U);
    t19 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t18, t16);
    t20 = (t19 - 0);
    t21 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t19);
    t22 = (16U * t21);
    t23 = (0 + t22);
    t24 = (t17 + t23);
    t25 = (t0 + 4840);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t24, 16U);
    xsi_driver_first_trans_fast_port(t25);

LAB2:    t30 = (t0 + 4632);
    *((int *)t30) = 1;

LAB1:    return;
LAB3:    t10 = (t0 + 1992U);
    t11 = *((char **)t10);
    t10 = (t0 + 4840);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB5:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t2 = (t0 + 7624U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 7608U);
    t9 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t6, t2, t8, t7);
    t1 = t9;
    goto LAB7;

LAB9:    goto LAB2;

}


extern void work_a_2067387895_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2067387895_3212880686_p_0,(void *)work_a_2067387895_3212880686_p_1,(void *)work_a_2067387895_3212880686_p_2};
	xsi_register_didat("work_a_2067387895_3212880686", "isim/processeur_test_isim_beh.exe.sim/work/a_2067387895_3212880686.didat");
	xsi_register_executes(pe);
}
