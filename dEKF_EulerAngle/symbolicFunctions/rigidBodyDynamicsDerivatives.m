function df_dx = rigidBodyDynamicsDerivatives(v_Bx,v_By,v_Bz,omega_Bx,omega_By,omega_Bz,f_B_ox,f_B_oy,f_B_oz,mu_B_ox,mu_B_oy,mu_B_oz,f_B_cx,f_B_cy,f_B_cz,mu_B_cx,mu_B_cy,mu_B_cz,phi1,phi2,phi3,K_Bxx,K_Byx,K_Bzx,K_Bxy,K_Byy,K_Bzy,K_Bxz,K_Byz,K_Bzz,I_Bxx,I_Bxy,I_Bxz,I_Byy,I_Byz,I_Bzz,m,G_g1,G_g2,G_g3)
%RIGIDBODYDYNAMICSDERIVATIVES
%    DF_DX = RIGIDBODYDYNAMICSDERIVATIVES(V_BX,V_BY,V_BZ,OMEGA_BX,OMEGA_BY,OMEGA_BZ,F_B_OX,F_B_OY,F_B_OZ,MU_B_OX,MU_B_OY,MU_B_OZ,F_B_CX,F_B_CY,F_B_CZ,MU_B_CX,MU_B_CY,MU_B_CZ,PHI1,PHI2,PHI3,K_BXX,K_BYX,K_BZX,K_BXY,K_BYY,K_BZY,K_BXZ,K_BYZ,K_BZZ,I_BXX,I_BXY,I_BXZ,I_BYY,I_BYZ,I_BZZ,M,G_G1,G_G2,G_G3)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    30-Jun-2015 19:04:37

t2 = 1.0./m;
t3 = cos(phi1);
t4 = cos(phi3);
t5 = cos(phi2);
t6 = sin(phi1);
t7 = sin(phi3);
t8 = sin(phi2);
t9 = t6.*t7;
t10 = t9-t3.*t4.*t5;
t11 = t4.*t6;
t12 = t3.*t5.*t7;
t13 = t11+t12;
t14 = t3.*t4;
t15 = t14-t5.*t6.*t7;
t16 = t3.*t7;
t17 = t4.*t5.*t6;
t18 = t16+t17;
t19 = I_Bxy.^2;
t20 = I_Bxz.^2;
t21 = I_Byz.^2;
t22 = I_Bxx.*t21;
t23 = I_Byy.*t20;
t24 = I_Bzz.*t19;
t29 = I_Bxx.*I_Byy.*I_Bzz;
t30 = I_Bxy.*I_Bxz.*I_Byz.*2.0;
t25 = t22+t23+t24-t29-t30;
t26 = 1.0./t25;
t27 = I_Byy.^2;
t28 = I_Bzz.^2;
t31 = t21-I_Byy.*I_Bzz;
t32 = t26.*t31;
t33 = I_Bxy.*I_Bzz;
t50 = I_Bxz.*I_Byz;
t34 = t33-t50;
t35 = t26.*t34;
t36 = I_Bxy.*I_Byz;
t71 = I_Bxz.*I_Byy;
t37 = t36-t71;
t38 = K_Bxx.^2;
t39 = K_Byx.^2;
t40 = K_Bzx.^2;
t41 = K_Bxy.^2;
t42 = K_Byy.^2;
t43 = K_Bzy.^2;
t44 = K_Bxz.^2;
t45 = K_Byz.^2;
t46 = K_Bzz.^2;
t47 = I_Bxx.^2;
t48 = I_Bxy.*omega_Bz.*t28;
t49 = I_Bxx.*I_Bxz.*I_Byz.*omega_Bz;
t51 = t20-I_Bxx.*I_Bzz;
t52 = t26.*t51;
t53 = I_Bxx.*I_Byz;
t73 = I_Bxy.*I_Bxz;
t54 = t53-t73;
t55 = t26.*t54;
t56 = I_Bxy.*I_Bzz.*K_Bxx.*K_Bxy;
t57 = I_Bxy.*I_Bzz.*K_Byx.*K_Byy;
t58 = I_Bxy.*I_Bzz.*K_Bzx.*K_Bzy;
t59 = I_Bxz.*omega_By.*t19.*2.0;
t60 = I_Byz.*omega_Bx.*t19.*2.0;
t61 = I_Bxy.*omega_Bz.*t20.*2.0;
t62 = I_Bxy.*omega_Bz.*t21.*2.0;
t63 = I_Bxx.*I_Bxy.*I_Bxz.*omega_Bx;
t64 = I_Bxx.*I_Bxz.*I_Byy.*omega_By;
t65 = I_Bxx.*I_Byy.*I_Byz.*omega_Bx;
t66 = I_Bxx.*I_Byz.*I_Bzz.*omega_Bx;
t67 = I_Bxy.*I_Bxz.*I_Bzz.*omega_Bx;
t68 = I_Bxy.*I_Byy.*I_Byz.*omega_By;
t69 = I_Bxy.*I_Byz.*I_Bzz.*omega_By;
t70 = I_Bxz.*I_Byy.*I_Bzz.*omega_By;
t72 = t26.*t37;
t74 = t19-I_Bxx.*I_Byy;
t75 = t26.*t74;
t76 = I_Bxx.*I_Byz.*K_Bxy.*K_Bxz;
t77 = I_Bxz.*I_Byy.*K_Bxx.*K_Bxz;
t78 = I_Bxx.*I_Byz.*K_Byy.*K_Byz;
t79 = I_Bxz.*I_Byy.*K_Byx.*K_Byz;
t80 = I_Bxx.*I_Byz.*K_Bzy.*K_Bzz;
t81 = I_Bxz.*I_Byy.*K_Bzx.*K_Bzz;
t82 = 1.0./t8;
t83 = t3.^2;
t84 = t6.^2;
t85 = t83+t84;
t86 = 1.0./t85;
t87 = 1.0./t8.^2;
t88 = omega_Bx.*t3;
t89 = omega_By.*t6;
t90 = t88+t89;
df_dx = reshape([0.0,-omega_Bz,omega_By,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,omega_Bz,0.0,-omega_Bx,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-omega_By,omega_Bx,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,v_Bz,-v_By,t26.*(t48+t49+t60+t62+t64+t68+t69+t70-I_Byz.*omega_Bx.*t20.*2.0-I_Bxz.*omega_By.*t21.*2.0-I_Bxz.*omega_By.*t27-I_Bxx.*I_Bxy.*I_Byz.*omega_By-I_Bxy.*I_Bxz.*I_Byy.*omega_Bx.*2.0-I_Bxx.*I_Bxy.*I_Bzz.*omega_Bz+I_Bxy.*I_Bxz.*I_Bzz.*omega_Bx.*2.0-I_Bxy.*I_Byy.*I_Bzz.*omega_Bz-I_Bxz.*I_Byy.*I_Byz.*omega_Bz-I_Bxz.*I_Byz.*I_Bzz.*omega_Bz),-t26.*(I_Bxz.*omega_Bx.*t19.*-2.0+I_Bxx.*omega_Bz.*t20-I_Bxz.*omega_Bx.*t20.*2.0+I_Bxx.*omega_Bz.*t21-I_Byz.*omega_By.*t20.*2.0-I_Bzz.*omega_Bz.*t19-I_Bzz.*omega_Bz.*t20+I_Bxx.*omega_Bz.*t28-I_Byz.*omega_By.*t47-I_Bzz.*omega_Bz.*t47+I_Bxx.*I_Bxy.*I_Bxz.*omega_By+I_Bxx.*I_Bxy.*I_Byz.*omega_Bx.*2.0+I_Bxx.*I_Bxz.*I_Bzz.*omega_Bx.*2.0+I_Bxx.*I_Byy.*I_Byz.*omega_By-I_Bxy.*I_Bxz.*I_Byy.*omega_By+I_Bxx.*I_Byz.*I_Bzz.*omega_By+I_Bxy.*I_Bxz.*I_Bzz.*omega_By),t26.*(I_Bxx.*omega_By.*t19-I_Bxy.*omega_Bx.*t19.*2.0-I_Bxy.*omega_Bx.*t20.*2.0+I_Bxx.*omega_By.*t21-I_Byy.*omega_By.*t19-I_Byy.*omega_By.*t20-I_Byz.*omega_Bz.*t19.*2.0+I_Bxx.*omega_By.*t27-I_Byy.*omega_By.*t47-I_Byz.*omega_Bz.*t47+I_Bxx.*I_Bxy.*I_Byy.*omega_Bx.*2.0+I_Bxx.*I_Bxy.*I_Bxz.*omega_Bz+I_Bxx.*I_Bxz.*I_Byz.*omega_Bx.*2.0+I_Bxx.*I_Byy.*I_Byz.*omega_Bz+I_Bxy.*I_Bxz.*I_Byy.*omega_Bz+I_Bxx.*I_Byz.*I_Bzz.*omega_Bz-I_Bxy.*I_Bxz.*I_Bzz.*omega_Bz),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t3.*t5.*t82.*t86,-t6.*t86,t3.*t82.*t86,-v_Bz,0.0,v_Bx,t26.*(I_Bxz.*omega_Bx.*t21.*-2.0-I_Byz.*omega_By.*t19.*2.0+I_Byy.*omega_Bz.*t20+I_Byy.*omega_Bz.*t21-I_Byz.*omega_By.*t21.*2.0-I_Bzz.*omega_Bz.*t19-I_Bzz.*omega_Bz.*t21-I_Bxz.*omega_Bx.*t27+I_Byy.*omega_Bz.*t28-I_Bzz.*omega_Bz.*t27-I_Bxx.*I_Bxy.*I_Byz.*omega_Bx+I_Bxx.*I_Bxz.*I_Byy.*omega_Bx+I_Bxy.*I_Bxz.*I_Byy.*omega_By.*2.0+I_Bxy.*I_Byy.*I_Byz.*omega_Bx+I_Bxy.*I_Byz.*I_Bzz.*omega_Bx+I_Bxz.*I_Byy.*I_Bzz.*omega_Bx+I_Byy.*I_Byz.*I_Bzz.*omega_By.*2.0),-t26.*(t48-t49+t59+t61+t63+t65+t66+t67-I_Byz.*omega_Bx.*t20.*2.0-I_Bxz.*omega_By.*t21.*2.0-I_Byz.*omega_Bx.*t47-I_Bxx.*I_Bxy.*I_Byz.*omega_By.*2.0-I_Bxy.*I_Bxz.*I_Byy.*omega_Bx-I_Bxx.*I_Bxy.*I_Bzz.*omega_Bz-I_Bxy.*I_Byy.*I_Bzz.*omega_Bz+I_Bxy.*I_Byz.*I_Bzz.*omega_By.*2.0+I_Bxz.*I_Byy.*I_Byz.*omega_Bz-I_Bxz.*I_Byz.*I_Bzz.*omega_Bz),-t26.*(-I_Bxx.*omega_Bx.*t19-I_Bxx.*omega_Bx.*t21-I_Bxy.*omega_By.*t19.*2.0+I_Byy.*omega_Bx.*t19+I_Byy.*omega_Bx.*t20-I_Bxy.*omega_By.*t21.*2.0-I_Bxz.*omega_Bz.*t19.*2.0-I_Bxx.*omega_Bx.*t27-I_Bxz.*omega_Bz.*t27+I_Byy.*omega_Bx.*t47+I_Bxx.*I_Bxy.*I_Byy.*omega_By.*2.0+I_Bxx.*I_Bxy.*I_Byz.*omega_Bz+I_Bxx.*I_Bxz.*I_Byy.*omega_Bz+I_Bxy.*I_Byy.*I_Byz.*omega_Bz+I_Bxz.*I_Byy.*I_Byz.*omega_By.*2.0-I_Bxy.*I_Byz.*I_Bzz.*omega_Bz+I_Bxz.*I_Byy.*I_Bzz.*omega_Bz),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t5.*t6.*t82.*t86,t3.*t86,t6.*t82.*t86,v_By,-v_Bx,0.0,-t26.*(I_Bxy.*omega_Bx.*t21.*-2.0-I_Byy.*omega_By.*t20-I_Byy.*omega_By.*t21+I_Bzz.*omega_By.*t19-I_Byz.*omega_Bz.*t20.*2.0-I_Byz.*omega_Bz.*t21.*2.0+I_Bzz.*omega_By.*t21-I_Bxy.*omega_Bx.*t28-I_Byy.*omega_By.*t28+I_Bzz.*omega_By.*t27+I_Bxx.*I_Bxy.*I_Bzz.*omega_Bx-I_Bxx.*I_Bxz.*I_Byz.*omega_Bx+I_Bxy.*I_Byy.*I_Bzz.*omega_Bx+I_Bxz.*I_Byy.*I_Byz.*omega_Bx+I_Bxy.*I_Bxz.*I_Bzz.*omega_Bz.*2.0+I_Bxz.*I_Byz.*I_Bzz.*omega_Bx+I_Byy.*I_Byz.*I_Bzz.*omega_Bz.*2.0),t26.*(-I_Bxx.*omega_Bx.*t20-I_Bxx.*omega_Bx.*t21-I_Bxy.*omega_By.*t20.*2.0+I_Bzz.*omega_Bx.*t19-I_Bxz.*omega_Bz.*t20.*2.0+I_Bzz.*omega_Bx.*t20-I_Bxz.*omega_Bz.*t21.*2.0-I_Bxx.*omega_Bx.*t28-I_Bxy.*omega_By.*t28+I_Bzz.*omega_Bx.*t47+I_Bxx.*I_Bxy.*I_Bzz.*omega_By+I_Bxx.*I_Bxz.*I_Byz.*omega_By+I_Bxx.*I_Bxz.*I_Bzz.*omega_Bz.*2.0+I_Bxy.*I_Byy.*I_Bzz.*omega_By-I_Bxz.*I_Byy.*I_Byz.*omega_By+I_Bxy.*I_Byz.*I_Bzz.*omega_Bz.*2.0+I_Bxz.*I_Byz.*I_Bzz.*omega_By),t26.*(t59-t60+t61-t62+t63-t64+t65+t66-t67-t68+t69-t70+I_Bxz.*omega_By.*t27-I_Byz.*omega_Bx.*t47-I_Bxx.*I_Bxy.*I_Byz.*omega_By+I_Bxy.*I_Bxz.*I_Byy.*omega_Bx-I_Bxx.*I_Bxz.*I_Byz.*omega_Bz.*2.0+I_Bxz.*I_Byy.*I_Byz.*omega_Bz.*2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t82.*t86.*(t8.*t83+t8.*t84),0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t32,t35,-t72,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t35,t52,t55,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t26.*t37,t55,t75,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t32,-t35,t72,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t35,-t52,-t55,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t72,-t55,-t75,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-G_g2.*t15-G_g1.*t18,-G_g1.*t10-G_g2.*t13+G_g3.*t3.*t8,0.0,t26.*(t56+t57+t58+t77+t79+t81+t21.*t38+t21.*t39+t21.*t40-I_Byy.*I_Bzz.*t38-I_Byy.*I_Bzz.*t39-I_Byy.*I_Bzz.*t40-I_Bxy.*I_Byz.*K_Bxx.*K_Bxz-I_Bxz.*I_Byz.*K_Bxx.*K_Bxy-I_Bxy.*I_Byz.*K_Byx.*K_Byz-I_Bxz.*I_Byz.*K_Byx.*K_Byy-I_Bxy.*I_Byz.*K_Bzx.*K_Bzz-I_Bxz.*I_Byz.*K_Bzx.*K_Bzy),t26.*(I_Bxy.*I_Bzz.*t38-I_Bxz.*I_Byz.*t38+I_Bxy.*I_Bzz.*t39-I_Bxz.*I_Byz.*t39+I_Bxy.*I_Bzz.*t40-I_Bxz.*I_Byz.*t40+K_Bxx.*K_Bxy.*t20+K_Byx.*K_Byy.*t20+K_Bzx.*K_Bzy.*t20+I_Bxx.*I_Byz.*K_Bxx.*K_Bxz-I_Bxx.*I_Bzz.*K_Bxx.*K_Bxy-I_Bxy.*I_Bxz.*K_Bxx.*K_Bxz+I_Bxx.*I_Byz.*K_Byx.*K_Byz-I_Bxx.*I_Bzz.*K_Byx.*K_Byy-I_Bxy.*I_Bxz.*K_Byx.*K_Byz+I_Bxx.*I_Byz.*K_Bzx.*K_Bzz-I_Bxx.*I_Bzz.*K_Bzx.*K_Bzy-I_Bxy.*I_Bxz.*K_Bzx.*K_Bzz),-t26.*(I_Bxy.*I_Byz.*t38-I_Bxz.*I_Byy.*t38+I_Bxy.*I_Byz.*t39-I_Bxz.*I_Byy.*t39+I_Bxy.*I_Byz.*t40-I_Bxz.*I_Byy.*t40-K_Bxx.*K_Bxz.*t19-K_Byx.*K_Byz.*t19-K_Bzx.*K_Bzz.*t19+I_Bxx.*I_Byy.*K_Bxx.*K_Bxz-I_Bxx.*I_Byz.*K_Bxx.*K_Bxy+I_Bxy.*I_Bxz.*K_Bxx.*K_Bxy+I_Bxx.*I_Byy.*K_Byx.*K_Byz-I_Bxx.*I_Byz.*K_Byx.*K_Byy+I_Bxy.*I_Bxz.*K_Byx.*K_Byy+I_Bxx.*I_Byy.*K_Bzx.*K_Bzz-I_Bxx.*I_Byz.*K_Bzx.*K_Bzy+I_Bxy.*I_Bxz.*K_Bzx.*K_Bzy),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t82.*t86.*(omega_By.*t3.*t5-omega_Bx.*t5.*t6),-t86.*t90,t82.*t86.*(omega_By.*t3-omega_Bx.*t6),G_g3.*t4.*t5-G_g1.*t3.*t4.*t8+G_g2.*t3.*t7.*t8,G_g3.*t5.*t6-G_g1.*t4.*t6.*t8+G_g2.*t6.*t7.*t8,-G_g3.*t8-G_g1.*t4.*t5+G_g2.*t5.*t7,t26.*(I_Bxy.*I_Bzz.*t41-I_Bxz.*I_Byz.*t41+I_Bxy.*I_Bzz.*t42-I_Bxz.*I_Byz.*t42+I_Bxy.*I_Bzz.*t43-I_Bxz.*I_Byz.*t43+K_Bxx.*K_Bxy.*t21+K_Byx.*K_Byy.*t21+K_Bzx.*K_Bzy.*t21-I_Bxy.*I_Byz.*K_Bxy.*K_Bxz+I_Bxz.*I_Byy.*K_Bxy.*K_Bxz-I_Byy.*I_Bzz.*K_Bxx.*K_Bxy-I_Bxy.*I_Byz.*K_Byy.*K_Byz+I_Bxz.*I_Byy.*K_Byy.*K_Byz-I_Byy.*I_Bzz.*K_Byx.*K_Byy-I_Bxy.*I_Byz.*K_Bzy.*K_Bzz+I_Bxz.*I_Byy.*K_Bzy.*K_Bzz-I_Byy.*I_Bzz.*K_Bzx.*K_Bzy),t26.*(t56+t57+t58+t76+t78+t80+t20.*t41+t20.*t42+t20.*t43-I_Bxx.*I_Bzz.*t41-I_Bxx.*I_Bzz.*t42-I_Bxx.*I_Bzz.*t43-I_Bxy.*I_Bxz.*K_Bxy.*K_Bxz-I_Bxz.*I_Byz.*K_Bxx.*K_Bxy-I_Bxy.*I_Bxz.*K_Byy.*K_Byz-I_Bxz.*I_Byz.*K_Byx.*K_Byy-I_Bxy.*I_Bxz.*K_Bzy.*K_Bzz-I_Bxz.*I_Byz.*K_Bzx.*K_Bzy),t26.*(I_Bxx.*I_Byz.*t41-I_Bxy.*I_Bxz.*t41+I_Bxx.*I_Byz.*t42-I_Bxy.*I_Bxz.*t42+I_Bxx.*I_Byz.*t43-I_Bxy.*I_Bxz.*t43+K_Bxy.*K_Bxz.*t19+K_Byy.*K_Byz.*t19+K_Bzy.*K_Bzz.*t19-I_Bxx.*I_Byy.*K_Bxy.*K_Bxz-I_Bxy.*I_Byz.*K_Bxx.*K_Bxy+I_Bxz.*I_Byy.*K_Bxx.*K_Bxy-I_Bxx.*I_Byy.*K_Byy.*K_Byz-I_Bxy.*I_Byz.*K_Byx.*K_Byy+I_Bxz.*I_Byy.*K_Byx.*K_Byy-I_Bxx.*I_Byy.*K_Bzy.*K_Bzz-I_Bxy.*I_Byz.*K_Bzx.*K_Bzy+I_Bxz.*I_Byy.*K_Bzx.*K_Bzy),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t82.*t86.*(omega_Bx.*t3.*t8+omega_By.*t6.*t8+omega_Bz.*t5.*t83+omega_Bz.*t5.*t84)+t5.*t86.*t87.*(omega_Bx.*t3.*t5+omega_By.*t5.*t6-omega_Bz.*t8.*t83-omega_Bz.*t8.*t84),0.0,-t5.*t86.*t87.*t90,G_g2.*t10-G_g1.*t13-G_g3.*t7.*t8,G_g1.*t15-G_g2.*t18,G_g2.*t4.*t8+G_g1.*t7.*t8,-t26.*(I_Bxy.*I_Byz.*t44-I_Bxz.*I_Byy.*t44+I_Bxy.*I_Byz.*t45-I_Bxz.*I_Byy.*t45+I_Bxy.*I_Byz.*t46-I_Bxz.*I_Byy.*t46-K_Bxx.*K_Bxz.*t21-K_Byx.*K_Byz.*t21-K_Bzx.*K_Bzz.*t21-I_Bxy.*I_Bzz.*K_Bxy.*K_Bxz+I_Bxz.*I_Byz.*K_Bxy.*K_Bxz+I_Byy.*I_Bzz.*K_Bxx.*K_Bxz-I_Bxy.*I_Bzz.*K_Byy.*K_Byz+I_Bxz.*I_Byz.*K_Byy.*K_Byz+I_Byy.*I_Bzz.*K_Byx.*K_Byz-I_Bxy.*I_Bzz.*K_Bzy.*K_Bzz+I_Bxz.*I_Byz.*K_Bzy.*K_Bzz+I_Byy.*I_Bzz.*K_Bzx.*K_Bzz),t26.*(I_Bxx.*I_Byz.*t44-I_Bxy.*I_Bxz.*t44+I_Bxx.*I_Byz.*t45-I_Bxy.*I_Bxz.*t45+I_Bxx.*I_Byz.*t46-I_Bxy.*I_Bxz.*t46+K_Bxy.*K_Bxz.*t20+K_Byy.*K_Byz.*t20+K_Bzy.*K_Bzz.*t20-I_Bxx.*I_Bzz.*K_Bxy.*K_Bxz+I_Bxy.*I_Bzz.*K_Bxx.*K_Bxz-I_Bxz.*I_Byz.*K_Bxx.*K_Bxz-I_Bxx.*I_Bzz.*K_Byy.*K_Byz+I_Bxy.*I_Bzz.*K_Byx.*K_Byz-I_Bxz.*I_Byz.*K_Byx.*K_Byz-I_Bxx.*I_Bzz.*K_Bzy.*K_Bzz+I_Bxy.*I_Bzz.*K_Bzx.*K_Bzz-I_Bxz.*I_Byz.*K_Bzx.*K_Bzz),t26.*(t76+t77+t78+t79+t80+t81+t19.*t44+t19.*t45+t19.*t46-I_Bxx.*I_Byy.*t44-I_Bxx.*I_Byy.*t45-I_Bxx.*I_Byy.*t46-I_Bxy.*I_Bxz.*K_Bxy.*K_Bxz-I_Bxy.*I_Byz.*K_Bxx.*K_Bxz-I_Bxy.*I_Bxz.*K_Byy.*K_Byz-I_Bxy.*I_Byz.*K_Byx.*K_Byz-I_Bxy.*I_Bxz.*K_Bzy.*K_Bzz-I_Bxy.*I_Byz.*K_Bzx.*K_Bzz),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[21, 21]);
