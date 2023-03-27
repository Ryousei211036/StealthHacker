xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 82;
 -18.92750;0.03561;-0.03263;,
 -18.89613;2.44431;-2.77907;,
 -18.91480;0.03267;-3.91421;,
 -18.89583;3.44497;-0.03511;,
 -18.91409;2.44847;2.71031;,
 -18.94021;0.03855;3.84895;,
 -18.95888;-2.37310;2.71381;,
 -18.95918;-3.37375;-0.03016;,
 -18.94092;-2.37726;-2.77557;,
 -18.74164;2.67336;-3.04133;,
 -18.76211;0.03098;-4.28506;,
 -18.74132;3.76974;-0.03485;,
 -18.76132;2.67791;2.97322;,
 -18.78995;0.03742;4.22080;,
 -18.81040;-2.60496;2.97706;,
 -18.81073;-3.70134;-0.02942;,
 -18.79072;-2.60951;-3.03749;,
 -18.30773;2.86471;-3.26266;,
 -18.32970;0.02673;-4.59847;,
 -18.30738;4.04226;-0.03363;,
 -18.32887;2.86959;3.19710;,
 -18.35960;0.03364;4.53703;,
 -18.38158;-2.80431;3.20122;,
 -18.38192;-3.98186;-0.02781;,
 -18.36044;-2.80920;-3.25854;,
 -17.66044;2.98924;-3.40939;,
 -17.68343;0.02058;-4.80670;,
 -17.66008;4.22103;-0.03165;,
 -17.68256;2.99435;3.34787;,
 -17.71470;0.02781;4.74950;,
 -17.73769;-2.94085;3.35218;,
 -17.73805;-4.17262;-0.02556;,
 -17.71558;-2.94596;-3.40508;,
 -16.89832;3.02801;-3.45916;,
 -16.92166;0.01346;-4.87808;,
 -16.89796;4.27884;-0.02920;,
 -16.92077;3.03320;3.40257;,
 -16.95342;0.02080;4.82587;,
 -16.97677;-2.99376;3.40694;,
 -16.97713;-4.24458;-0.02301;,
 -16.95431;-2.99895;-3.45478;,
 -0.97873;2.88016;-3.40695;,
 -1.00208;-0.13440;-4.82587;,
 -0.97837;4.13098;0.02301;,
 -1.00119;2.88535;3.45478;,
 -1.03384;-0.12705;4.87808;,
 -1.05718;-3.14161;3.45915;,
 -1.05755;-4.39243;0.02920;,
 -1.03473;-3.14680;-3.40257;,
 -0.21781;2.82726;-3.35218;,
 -0.24080;-0.14141;-4.74950;,
 -0.21745;4.05903;0.02556;,
 -0.23993;2.83237;3.40508;,
 -0.27207;-0.13418;4.80670;,
 -0.29505;-3.10284;3.40939;,
 -0.29542;-4.33461;0.03165;,
 -0.27294;-3.10795;-3.34787;,
 0.42608;2.69072;-3.20122;,
 0.40410;-0.14725;-4.53703;,
 0.42641;3.86827;0.02781;,
 0.40494;2.69561;3.25854;,
 0.37420;-0.14034;4.59847;,
 0.35222;-2.97830;3.26266;,
 0.35188;-4.15584;0.03363;,
 0.37336;-2.98319;-3.19710;,
 0.85490;2.49136;-2.97706;,
 0.83444;-0.15101;-4.22080;,
 0.85521;3.58775;0.02942;,
 0.83522;2.49591;3.03749;,
 0.80661;-0.14457;4.28506;,
 0.78614;-2.78695;3.04133;,
 0.78583;-3.88333;0.03485;,
 0.80582;-2.79150;-2.97322;,
 1.00338;2.25952;-2.71381;,
 0.98472;-0.15213;-3.84895;,
 1.00367;3.26016;0.03016;,
 0.98542;2.26367;2.77557;,
 0.95931;-0.14626;3.91421;,
 0.94062;-2.55791;2.77907;,
 0.94033;-3.55857;0.03511;,
 0.95859;-2.56206;-2.71031;,
 0.97201;-0.14919;0.03263;;
 
 88;
 3;0,1,2;,
 3;0,3,1;,
 3;0,4,3;,
 3;0,5,4;,
 3;0,6,5;,
 3;0,7,6;,
 3;0,8,7;,
 3;0,2,8;,
 4;2,1,9,10;,
 4;1,3,11,9;,
 4;3,4,12,11;,
 4;4,5,13,12;,
 4;5,6,14,13;,
 4;6,7,15,14;,
 4;7,8,16,15;,
 4;8,2,10,16;,
 4;10,9,17,18;,
 4;9,11,19,17;,
 4;11,12,20,19;,
 4;12,13,21,20;,
 4;13,14,22,21;,
 4;14,15,23,22;,
 4;15,16,24,23;,
 4;16,10,18,24;,
 4;18,17,25,26;,
 4;17,19,27,25;,
 4;19,20,28,27;,
 4;20,21,29,28;,
 4;21,22,30,29;,
 4;22,23,31,30;,
 4;23,24,32,31;,
 4;24,18,26,32;,
 4;26,25,33,34;,
 4;25,27,35,33;,
 4;27,28,36,35;,
 4;28,29,37,36;,
 4;29,30,38,37;,
 4;30,31,39,38;,
 4;31,32,40,39;,
 4;32,26,34,40;,
 4;34,33,41,42;,
 4;33,35,43,41;,
 4;35,36,44,43;,
 4;36,37,45,44;,
 4;37,38,46,45;,
 4;38,39,47,46;,
 4;39,40,48,47;,
 4;40,34,42,48;,
 4;42,41,49,50;,
 4;41,43,51,49;,
 4;43,44,52,51;,
 4;44,45,53,52;,
 4;45,46,54,53;,
 4;46,47,55,54;,
 4;47,48,56,55;,
 4;48,42,50,56;,
 4;50,49,57,58;,
 4;49,51,59,57;,
 4;51,52,60,59;,
 4;52,53,61,60;,
 4;53,54,62,61;,
 4;54,55,63,62;,
 4;55,56,64,63;,
 4;56,50,58,64;,
 4;58,57,65,66;,
 4;57,59,67,65;,
 4;59,60,68,67;,
 4;60,61,69,68;,
 4;61,62,70,69;,
 4;62,63,71,70;,
 4;63,64,72,71;,
 4;64,58,66,72;,
 4;66,65,73,74;,
 4;65,67,75,73;,
 4;67,68,76,75;,
 4;68,69,77,76;,
 4;69,70,78,77;,
 4;70,71,79,78;,
 4;71,72,80,79;,
 4;72,66,74,80;,
 3;74,73,81;,
 3;73,75,81;,
 3;75,76,81;,
 3;76,77,81;,
 3;77,78,81;,
 3;78,79,81;,
 3;79,80,81;,
 3;80,74,81;;
 
 MeshMaterialList {
  1;
  88;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  82;
  -0.999951;0.009287;-0.003279;,
  -0.980927;0.008972;-0.194170;,
  -0.977254;0.161127;-0.137885;,
  -0.974700;0.223491;-0.003358;,
  -0.978134;0.161333;0.131242;,
  -0.982177;0.009262;0.187728;,
  -0.980962;-0.142938;0.131461;,
  -0.978685;-0.205344;-0.003048;,
  -0.980081;-0.143143;-0.137664;,
  -0.790127;0.006895;-0.612905;,
  -0.767957;0.478548;-0.425717;,
  -0.750332;0.661054;-0.002955;,
  -0.770722;0.479190;0.419957;,
  -0.794121;0.007820;0.607710;,
  -0.779486;-0.464179;0.420642;,
  -0.762479;-0.647010;-0.002006;,
  -0.776718;-0.464819;-0.425032;,
  -0.454048;0.003570;-0.890970;,
  -0.425466;0.671192;-0.607026;,
  -0.404145;0.914693;-0.002014;,
  -0.429425;0.672108;0.603212;,
  -0.459867;0.004916;0.887974;,
  -0.441825;-0.663141;0.604181;,
  -0.421060;-0.907032;-0.000691;,
  -0.437868;-0.664055;-0.606055;,
  -0.201601;0.001161;-0.979467;,
  -0.183310;0.726741;-0.662000;,
  -0.171917;0.985111;-0.001307;,
  -0.187636;0.727741;0.659686;,
  -0.208007;0.002642;0.978124;,
  -0.201114;-0.723173;0.660738;,
  -0.190191;-0.981747;0.000120;,
  -0.196789;-0.724172;-0.660946;,
  -0.045080;-0.000307;-0.998983;,
  -0.036181;0.737937;-0.673899;,
  -0.033212;0.999448;-0.000864;,
  -0.040587;0.738956;0.672530;,
  -0.051617;0.001204;0.998666;,
  -0.054297;-0.737098;0.673601;,
  -0.051773;-0.998659;0.000586;,
  -0.049891;-0.738117;-0.672826;,
  0.051618;-0.001205;-0.998666;,
  0.054295;0.737098;-0.673601;,
  0.051768;0.998659;-0.000586;,
  0.049888;0.738117;0.672826;,
  0.045078;0.000306;0.998983;,
  0.036180;-0.737938;0.673898;,
  0.033215;-0.999448;0.000865;,
  0.040589;-0.738957;-0.672529;,
  0.208008;-0.002643;-0.978124;,
  0.201114;0.723172;-0.660738;,
  0.190186;0.981748;-0.000120;,
  0.196786;0.724172;0.660946;,
  0.201600;-0.001162;0.979467;,
  0.183313;-0.726742;0.661999;,
  0.171922;-0.985110;0.001308;,
  0.187638;-0.727743;-0.659684;,
  0.459870;-0.004917;-0.887973;,
  0.441830;0.663139;-0.604180;,
  0.421067;0.907029;0.000692;,
  0.437870;0.664054;0.606055;,
  0.454048;-0.003571;0.890970;,
  0.425465;-0.671194;0.607024;,
  0.404140;-0.914695;0.002015;,
  0.429425;-0.672110;-0.603210;,
  0.794114;-0.007819;-0.607718;,
  0.779480;0.464185;-0.420647;,
  0.762475;0.647014;0.002006;,
  0.776714;0.464823;0.425034;,
  0.790124;-0.006894;0.612908;,
  0.767955;-0.478549;0.425718;,
  0.750331;-0.661056;0.002955;,
  0.770719;-0.479191;-0.419961;,
  0.982175;-0.009261;-0.187741;,
  0.980959;0.142950;-0.131469;,
  0.978682;0.205358;0.003047;,
  0.980079;0.143153;0.137668;,
  0.980926;-0.008972;0.194173;,
  0.977254;-0.161127;0.137886;,
  0.974701;-0.223487;0.003359;,
  0.978133;-0.161336;-0.131248;,
  0.999951;-0.009287;0.003280;;
  88;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,1,8;,
  4;1,2,10,9;,
  4;2,3,11,10;,
  4;3,4,12,11;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,7,15,14;,
  4;7,8,16,15;,
  4;8,1,9,16;,
  4;9,10,18,17;,
  4;10,11,19,18;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,15,23,22;,
  4;15,16,24,23;,
  4;16,9,17,24;,
  4;17,18,26,25;,
  4;18,19,27,26;,
  4;19,20,28,27;,
  4;20,21,29,28;,
  4;21,22,30,29;,
  4;22,23,31,30;,
  4;23,24,32,31;,
  4;24,17,25,32;,
  4;25,26,34,33;,
  4;26,27,35,34;,
  4;27,28,36,35;,
  4;28,29,37,36;,
  4;29,30,38,37;,
  4;30,31,39,38;,
  4;31,32,40,39;,
  4;32,25,33,40;,
  4;33,34,42,41;,
  4;34,35,43,42;,
  4;35,36,44,43;,
  4;36,37,45,44;,
  4;37,38,46,45;,
  4;38,39,47,46;,
  4;39,40,48,47;,
  4;40,33,41,48;,
  4;41,42,50,49;,
  4;42,43,51,50;,
  4;43,44,52,51;,
  4;44,45,53,52;,
  4;45,46,54,53;,
  4;46,47,55,54;,
  4;47,48,56,55;,
  4;48,41,49,56;,
  4;49,50,58,57;,
  4;50,51,59,58;,
  4;51,52,60,59;,
  4;52,53,61,60;,
  4;53,54,62,61;,
  4;54,55,63,62;,
  4;55,56,64,63;,
  4;56,49,57,64;,
  4;57,58,66,65;,
  4;58,59,67,66;,
  4;59,60,68,67;,
  4;60,61,69,68;,
  4;61,62,70,69;,
  4;62,63,71,70;,
  4;63,64,72,71;,
  4;64,57,65,72;,
  4;65,66,74,73;,
  4;66,67,75,74;,
  4;67,68,76,75;,
  4;68,69,77,76;,
  4;69,70,78,77;,
  4;70,71,79,78;,
  4;71,72,80,79;,
  4;72,65,73,80;,
  3;73,74,81;,
  3;74,75,81;,
  3;75,76,81;,
  3;76,77,81;,
  3;77,78,81;,
  3;78,79,81;,
  3;79,80,81;,
  3;80,73,81;;
 }
}
