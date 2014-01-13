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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Jesus/Documents/GitHub/RepositorioGit/ContadorOctal/OctalCompleto_tb.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_0329281851_3212880686_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(66, ng0);

LAB3:    t1 = (20 * 1000LL);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 2556);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 2556);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 2512);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0329281851_3212880686_p_1(char *t0)
{
    char t9[16];
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    unsigned char t8;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned char t21;

LAB0:    t1 = (t0 + 2316U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2592);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2216);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1420U);
    t3 = *((char **)t2);
    t2 = (t0 + 5064U);
    t4 = (t0 + 5111);
    t6 = (t9 + 0U);
    t10 = (t6 + 0U);
    *((int *)t10) = 0;
    t10 = (t6 + 4U);
    *((int *)t10) = 2;
    t10 = (t6 + 8U);
    *((int *)t10) = 1;
    t11 = (2 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t6 + 12U);
    *((unsigned int *)t10) = t12;
    t13 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t9);
    if (t13 == 1)
        goto LAB10;

LAB11:    t8 = (unsigned char)0;

LAB12:    if (t8 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2592);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2216);
    xsi_process_wait(t2, t7);

LAB15:    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t19 = (t0 + 5117);
    xsi_report(t19, 17U, (unsigned char)1);
    goto LAB9;

LAB10:    t10 = (t0 + 1512U);
    t14 = *((char **)t10);
    t10 = (t0 + 5064U);
    t15 = (t0 + 5114);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 2;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t20 = (2 - 0);
    t12 = (t20 * 1);
    t12 = (t12 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t12;
    t21 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t14, t10, t15, t17);
    t8 = t21;
    goto LAB12;

LAB13:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2628);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);
    t7 = (100 * 1000LL);
    t2 = (t0 + 2216);
    xsi_process_wait(t2, t7);

LAB19:    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

LAB17:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 2664);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t7 = (40 * 1000LL);
    t2 = (t0 + 2216);
    xsi_process_wait(t2, t7);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

LAB21:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2664);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(90, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2216);
    xsi_process_wait(t2, t7);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

LAB25:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1420U);
    t3 = *((char **)t2);
    t2 = (t0 + 5064U);
    t4 = (t0 + 960U);
    t5 = *((char **)t4);
    t4 = (t0 + 5032U);
    t13 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t5, t4);
    if (t13 == 1)
        goto LAB31;

LAB32:    t8 = (unsigned char)0;

LAB33:    if (t8 == 0)
        goto LAB29;

LAB30:    xsi_set_current_line(143, ng0);
    t7 = (1000 * 1000LL);
    t2 = (t0 + 2216);
    xsi_process_wait(t2, t7);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

LAB29:    t16 = (t0 + 5134);
    xsi_report(t16, 16U, (unsigned char)3);
    goto LAB30;

LAB31:    t6 = (t0 + 1512U);
    t10 = *((char **)t6);
    t6 = (t0 + 5064U);
    t14 = (t0 + 1052U);
    t15 = *((char **)t14);
    t14 = (t0 + 5048U);
    t21 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t10, t6, t15, t14);
    t8 = t21;
    goto LAB33;

LAB34:    xsi_set_current_line(145, ng0);
    if ((unsigned char)0 == 0)
        goto LAB38;

LAB39:    goto LAB2;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

LAB38:    t2 = (t0 + 5150);
    xsi_report(t2, 22U, (unsigned char)3);
    goto LAB39;

}


extern void work_a_0329281851_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0329281851_3212880686_p_0,(void *)work_a_0329281851_3212880686_p_1};
	xsi_register_didat("work_a_0329281851_3212880686", "isim/OctalCompleto_tb_isim_beh.exe.sim/work/a_0329281851_3212880686.didat");
	xsi_register_executes(pe);
}
