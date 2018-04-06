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
static const char *ng0 = "/home/hhu/Compilateur/tdArchi/td1/module1.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_2255506239096238868_3965413181(char *, char *, char *, char *, int );


static void work_a_3828131856_3212880686_p_0(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    char *t15;
    unsigned int t16;
    unsigned int t17;

LAB0:    t1 = (t0 + 3384U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);

LAB6:    t2 = (t0 + 3704);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 3704);
    *((int *)t6) = 0;
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)2);
    if (t5 != 0)
        goto LAB11;

LAB13:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB14;

LAB15:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB18;

LAB19:    t3 = (unsigned char)0;

LAB20:    if (t3 != 0)
        goto LAB16;

LAB17:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t8 = (t5 == (unsigned char)2);
    if (t8 == 1)
        goto LAB23;

LAB24:    t3 = (unsigned char)0;

LAB25:    if (t3 != 0)
        goto LAB21;

LAB22:
LAB12:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2408U);
    t4 = *((char **)t2);
    t2 = (t0 + 3784);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

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

LAB11:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2288U);
    t6 = *((char **)t2);
    t2 = (t0 + 3784);
    t7 = (t2 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t6, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB12;

LAB14:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 2408U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    memcpy(t2, t6, 8U);
    goto LAB12;

LAB16:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2408U);
    t7 = *((char **)t2);
    t2 = (t0 + 5712U);
    t10 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t14, t7, t2, 1);
    t11 = (t0 + 2408U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t15 = (t14 + 12U);
    t16 = *((unsigned int *)t15);
    t17 = (1U * t16);
    memcpy(t11, t10, t17);
    goto LAB12;

LAB18:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t9 = *((unsigned char *)t6);
    t13 = (t9 == (unsigned char)2);
    t3 = t13;
    goto LAB20;

LAB21:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2408U);
    t7 = *((char **)t2);
    t2 = (t0 + 5712U);
    t10 = ieee_p_3620187407_sub_2255506239096238868_3965413181(IEEE_P_3620187407, t14, t7, t2, 1);
    t11 = (t0 + 2408U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t15 = (t14 + 12U);
    t16 = *((unsigned int *)t15);
    t17 = (1U * t16);
    memcpy(t11, t10, t17);
    goto LAB12;

LAB23:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t9 = *((unsigned char *)t6);
    t13 = (t9 == (unsigned char)2);
    t3 = t13;
    goto LAB25;

}


extern void work_a_3828131856_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3828131856_3212880686_p_0};
	xsi_register_didat("work_a_3828131856_3212880686", "isim/test1_isim_beh.exe.sim/work/a_3828131856_3212880686.didat");
	xsi_register_executes(pe);
}
