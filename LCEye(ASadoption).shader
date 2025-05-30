// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "LCumashader/Eye(AS)"
{
	Properties
	{
		[Header(Diffuse)][NoScaleOffset]_MainTex("Diffuse Map (_eye)", 2D) = "white" {}
		_EyeTilingOffset("Eye Tiling & Offset", Vector) = (0.25,1,0,0)
		[HDR]_AdditionalDiffuseColor("AdditionalDiffuseColor", Color) = (1,1,1,1)
		[Toggle]_EyeShadow("EyeShadow", Float) = 1
		[Toggle]_HighLightShadow("HighLightShadow", Float) = 0
		[HDR]_Shadow("Shadow", Color) = (0.699,0.699,0.699,0)
		_ShadowStep("ShadowStep", Range( 0 , 1)) = 0.3
		_ShadowFeather("ShadowFeather", Range( 0 , 1)) = 0.01
		[Toggle]_ReceiveShadowLerp("ReceiveShadowLerp", Float) = 0
		[Toggle]_ShadowinLightColor("Shadow in LightColor", Float) = 0
		[Toggle]_NoShadowinDirectionalLightColor("NoShadow in DirectionalLightColor", Float) = 0
		[Header(HighLight00)][Toggle]_hi00Toggle("hi00 Toggle", Float) = 1
		_hi00("HighLight0 (_hi00)", 2D) = "black" {}
		_hi00Step("hi00Step", Range( 0 , 1)) = 0
		_hi00StepFeather("hi00StepFeather", Range( 0 , 1)) = 1
		_hi00Strength("hi00 Strength", Range( 0 , 2)) = 1
		[Header(HighLight01)][Toggle]_hi01Toggle("hi01 Toggle", Float) = 1
		_hi01("HighLight01 (_hi01)", 2D) = "black" {}
		_hi01Step("hi01Step", Range( 0 , 1)) = 0
		_hi01StepFeather("hi01StepFeather", Range( 0 , 1)) = 1
		_hi01Strength("hi01 Strength", Range( 0 , 2)) = 1
		[Header(HighLight02)][Toggle]_hi02Toggle("hi02 Toggle", Float) = 0
		_hi02("HighLight02 (_hi02)", 2D) = "black" {}
		_hi02Step("hi02Step", Range( 0 , 1)) = 0
		_hi02StepFeather("hi02StepFeather", Range( 0 , 1)) = 1
		_hi02Strength("hi02 Strength", Range( 0 , 2)) = 1
		[Header(Emissive and Other)]_EmiTex("Emissive (_emi) [optional]", 2D) = "white" {}
		[HDR]_EmissiveColor("EmissiveColor", Color) = (1,1,1,1)
		_EmmisiveStrength("EmmisiveStrength", Range( 0 , 10)) = 0
		[HDR]_CharaColor("CharaColor", Color) = (1,1,1,1)
		_Saturation("Saturation", Range( 0 , 1)) = 1
		[HDR]_UnsaturationColor("UnsaturationColor", Color) = (0.2117647,0.7137255,0.07058824,0)
		[Header(Light)]_MinDirectLight("MinDirectLight", Range( 0 , 1)) = 0
		_MaxDirectLight("MaxDirectLight", Range( 0 , 2)) = 1
		_IndirectLightBiasSample1("Indirect Light Bias Sample1", Vector) = (0,0,0,1)
		_IndirectLightBiasSample2("Indirect Light Bias Sample2", Vector) = (0,1,0,1)
		_IndirectBiasSampleRate("Indirect Bias Sample Rate", Range( 0 , 1)) = 1
		_MinIndirectLight("MinIndirectLight", Range( 0 , 1)) = 0.1
		_MaxIndirectLight("MaxIndirectLight", Range( 0 , 2)) = 1
		_LightColorGrayScale("LightColor GrayScale", Range( 0 , 1)) = 0
		_EyeLightFactor("EyeLightFactor", Range( 0 , 1)) = 0.5
		_HighlightLightFactor("HighlightLightFactor", Range( 0 , 1)) = 0
		_GlobalLightFactor("GlobalLightFactor", Range( 0 , 1)) = 0
		[Header(Vertex Function)]_VertexOffsetL("Vertex OffsetL", Vector) = (0,0,0,0)
		[Toggle]_FakeEyeTrackingL("FakeEyeTrackingL", Float) = 0
		_MoveRangeLxxyy("+/-MoveRangeL.xxyy", Vector) = (0.003,0.004,0.004,0.004)
		_WorkingAngleLxxyy("+/-WorkingAngleL.xxyy", Vector) = (30,45,30,30)
		_VertexOffsetR("Vertex OffsetR", Vector) = (0,0,0,0)
		[Toggle]_FakeEyeTrackingR("FakeEyeTrackingR", Float) = 0
		_MoveRangeRxxyy("+/-MoveRangeR.xxyy", Vector) = (0.004,0.003,0.004,0.004)
		_WorkingAngleRxxyy("+/-WorkingAngleR.xxyy", Vector) = (45,30,30,30)
		[Header(Custom Transform Direction)][Toggle]_UseCustomTransform("Use Custom Transform", Float) = 0
		[Toggle]_IsBlenderCoordinateSystem("IsBlenderCoordinateSystem", Float) = 0
		_XAxisVectorL("+X Axis Vector L", Vector) = (0,0,0,0)
		_YAxisVectorL("+Y Axis Vector L", Vector) = (0,0,0,0)
		_XAxisVectorR("+X Axis Vector R", Vector) = (0,0,0,0)
		_YAxisVectorR("-Y Axis Vector R", Vector) = (0,0,0,0)
		[Header(HeadBoneTransform)][Toggle]_ObjectSpace("ObjectSpace", Float) = 1
		_FaceCenterPos("FaceCenterPos", Vector) = (0,0.15,0,0)
		_FaceForward("FaceForward", Vector) = (0,0,1,0)
		_FaceUp("FaceUp", Vector) = (0,1,0,0)
		[Header(Stencil Buffer)]_StencilReference("Stencil Reference", Range( 0 , 255)) = 0
		_StencilReadMask("Stencil ReadMask", Range( 0 , 255)) = 255
		_StencilWriteMask("Stencil WriteMask", Range( 0 , 255)) = 255
		[Enum(UnityEngine.Rendering.CompareFunction)]_StencilComparison("Stencil Comparison", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilPassFront("Stencil PassFront", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilFailFront("Stencil FailFront", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilZFailFront("Stencil ZFailFront", Float) = 0
		[Enum(UnityEngine.Rendering.CullMode)]_CullMode("Cull Mode", Float) = 2
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}
	
	SubShader
	{
		Tags { "RenderType"="Opaque" "Queue"="Geometry" }
	LOD 100

		Cull Off
		CGINCLUDE
		#pragma target 3.0 
		ENDCG

       	
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend Off
			AlphaToMask Off
			Cull [_CullMode]
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			Stencil
			{
				Ref [_StencilReference]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilComparison]
				Pass [_StencilPassFront]
				Fail [_StencilFailFront]
				ZFail [_StencilZFailFront]
			}
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase
			#ifndef UNITY_PASS_FORWARDBASE
			#define UNITY_PASS_FORWARDBASE
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1

			//This is a late directive
			
			uniform float _StencilZFailFront;
			uniform float _StencilFailFront;
			uniform float _StencilPassFront;
			uniform float _StencilComparison;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float _UseCustomTransform;
			uniform float _FakeEyeTrackingL;
			uniform float3 _VertexOffsetL;
			uniform float _ObjectSpace;
			uniform float3 _FaceForward;
			uniform float3 _FaceUp;
			uniform float3 _FaceCenterPos;
			uniform float4 _WorkingAngleLxxyy;
			uniform float4 _MoveRangeLxxyy;
			uniform float _IsBlenderCoordinateSystem;
			uniform float3 _XAxisVectorL;
			uniform float3 _YAxisVectorL;
			uniform float _FakeEyeTrackingR;
			uniform float3 _VertexOffsetR;
			uniform float4 _WorkingAngleRxxyy;
			uniform float4 _MoveRangeRxxyy;
			uniform float3 _XAxisVectorR;
			uniform float3 _YAxisVectorR;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float _EyeShadow;
			uniform sampler2D _MainTex;
			uniform float4 _EyeTilingOffset;
			uniform float4 _AdditionalDiffuseColor;
			uniform float4 _Shadow;
			uniform float _ShadowStep;
			uniform float _ReceiveShadowLerp;
			uniform float _ShadowFeather;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _EyeLightFactor;
			uniform float _HighLightShadow;
			uniform float _hi00Strength;
			uniform float _hi01Strength;
			uniform float _hi02Strength;
			uniform float _hi00Toggle;
			uniform sampler2D _hi00;
			uniform float4 _hi00_ST;
			uniform float _hi00Step;
			uniform float _hi00StepFeather;
			uniform float _hi01Toggle;
			uniform sampler2D _hi01;
			uniform float4 _hi01_ST;
			uniform float _hi01Step;
			uniform float _hi01StepFeather;
			uniform float _hi02Toggle;
			uniform sampler2D _hi02;
			uniform float4 _hi02_ST;
			uniform float _hi02Step;
			uniform float _hi02StepFeather;
			uniform float _HighlightLightFactor;
			uniform float _GlobalLightFactor;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform float _Saturation;
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float IsThereALight(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			
			float PureLightAttenuation( float3 worldPos )
			{
				#ifdef POINT
				        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz; \
				        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))
				#else
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord
				#endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#ifdef DIRECTIONAL
				        return 1;
				#endif
				#ifdef POINT_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w;
				#endif
				#ifdef DIRECTIONAL_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTexture0, lightCoord).w;
				#endif
			}
			
			float3 ShadeSH9out( half4 Normal )
			{
				return ShadeSH9(Normal);
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_SHADOW_COORDS(4)
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 objToWorldDir1408 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceForward, 0 ) ).xyz );
				float3 Forward1412 = ( _ObjectSpace == 0.0 ? _FaceForward : objToWorldDir1408 );
				float isObjectSpace1918 = _ObjectSpace;
				float3 objToWorldDir1409 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz );
				float3 Up1413 = ( isObjectSpace1918 == 0.0 ? _FaceUp : objToWorldDir1409 );
				float3 normalizeResult1447 = normalize( cross( Forward1412 , Up1413 ) );
				float3 Left1411 = normalizeResult1447;
				float3 objToWorld1423 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 temp_output_1924_0 = ( isObjectSpace1918 == 0.0 ? _FaceCenterPos : objToWorld1423 );
				float3 normalizeResult1448 = normalize( ( _WorldSpaceCameraPos - temp_output_1924_0 ) );
				float3 Center2Cam1429 = normalizeResult1448;
				float dotResult1419 = dot( (Left1411).xz , (Center2Cam1429).xz );
				float Xsign1853 = sign( dotResult1419 );
				float3 FCenterPos1479 = temp_output_1924_0;
				float3 temp_output_1499_0 = ( _WorldSpaceCameraPos - FCenterPos1479 );
				float3 normalizeResult1500 = normalize( temp_output_1499_0 );
				float dotResult1503 = dot( normalizeResult1500 , Up1413 );
				float3 normalizeResult1512 = normalize( ( _WorldSpaceCameraPos - ( ( dotResult1503 * length( temp_output_1499_0 ) * Up1413 ) + FCenterPos1479 ) ) );
				float3 Cylinder1675 = normalizeResult1512;
				float dotResult1450 = dot( Forward1412 , Cylinder1675 );
				float Xvalue1856 = acos( dotResult1450 );
				float dotResult1465 = dot( Up1413 , Center2Cam1429 );
				float Ysign1863 = sign( dotResult1465 );
				float dotResult1794 = dot( Center2Cam1429 , Cylinder1675 );
				float Yvalue1859 = acos( dotResult1794 );
				float3 appendResult1441 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1741 = (float3(-_XAxisVectorL.x , _XAxisVectorL.z , -_XAxisVectorL.y));
				float3 normalizeResult1747 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1741 : _XAxisVectorL ) );
				float3 appendResult1742 = (float3(-_YAxisVectorL.x , _YAxisVectorL.z , -_YAxisVectorL.y));
				float3 normalizeResult1748 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1742 : _YAxisVectorL ) );
				float3 normalizeResult1749 = ASESafeNormalize( cross( normalizeResult1747 , normalizeResult1748 ) );
				float3x3 CustomMatrixL1745 = float3x3(normalizeResult1747, normalizeResult1748, normalizeResult1749);
				float3 appendResult1849 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1752 = (float3(-_XAxisVectorR.x , _XAxisVectorR.z , -_XAxisVectorR.y));
				float3 normalizeResult1758 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1752 : _XAxisVectorR ) );
				float3 break1765 = -_YAxisVectorR;
				float3 appendResult1756 = (float3(-break1765.x , break1765.z , -break1765.y));
				float3 normalizeResult1757 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1756 : -_YAxisVectorR ) );
				float3 normalizeResult1762 = ASESafeNormalize( cross( normalizeResult1758 , normalizeResult1757 ) );
				float3x3 CustomMatrixR1760 = float3x3(normalizeResult1758, normalizeResult1757, normalizeResult1762);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				
				v.vertex.xyz += ( v.ase_texcoord.y >= 0.5 ? ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )), CustomMatrixL1745 ) : (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )) ) : ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )), CustomMatrixR1760 ) : (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )) ) );
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 appendResult1932 = (float2(_EyeTilingOffset.x , _EyeTilingOffset.y));
				float2 appendResult1933 = (float2(_EyeTilingOffset.z , _EyeTilingOffset.w));
				float2 texCoord1931 = i.ase_texcoord1.xy * appendResult1932 + appendResult1933;
				float4 temp_output_1425_0 = ( tex2D( _MainTex, texCoord1931 ) * _AdditionalDiffuseColor );
				float4 Shadow1322 = _Shadow;
				float localIsThereALight797 = IsThereALight();
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float dotResult779 = dot( worldSpaceLightDir , ase_worldNormal );
				float HalfLambertTerm781 = ( localIsThereALight797 == 1.0 ? (dotResult779*0.5 + 0.5) : 1.0 );
				float localIsThereALight1917 = IsThereALight();
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float HalfShadowAttenuation1911 = ( localIsThereALight1917 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp1312 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( HalfLambertTerm781 * HalfShadowAttenuation1911 ) ):( HalfLambertTerm781 )) ) / _ShadowFeather ) );
				float4 lerpResult1325 = lerp( temp_output_1425_0 , ( temp_output_1425_0 * Shadow1322 ) , shad_lerp1312);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1927_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 worldPos1898 = ase_worldPos;
				float localPureLightAttenuation1898 = PureLightAttenuation( worldPos1898 );
				float3 temp_output_1899_0 = ( temp_output_1927_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1898 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1901 = temp_output_1899_0;
				#else
				float3 staticSwitch1901 = temp_output_1927_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float4 appendResult1955 = (float4(ase_worldNormal , 1.0));
				float4 Normal1952 = appendResult1955;
				float3 localShadeSH9out1952 = ShadeSH9out( Normal1952 );
				float3 appendResult1962 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1963 = ASESafeNormalize( appendResult1962 );
				float4 appendResult1964 = (float4(normalizeResult1963 , _IndirectLightBiasSample1.w));
				float4 Normal1965 = appendResult1964;
				float3 localShadeSH9out1965 = ShadeSH9out( Normal1965 );
				float3 appendResult1958 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1959 = ASESafeNormalize( appendResult1958 );
				float4 appendResult1960 = (float4(normalizeResult1959 , _IndirectLightBiasSample2.w));
				float4 Normal1961 = appendResult1960;
				float3 localShadeSH9out1961 = ShadeSH9out( Normal1961 );
				float3 lerpResult1954 = lerp( localShadeSH9out1952 , max( localShadeSH9out1965 , localShadeSH9out1961 ) , _IndirectBiasSampleRate);
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1706_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1901 ):( temp_output_1899_0 )) , temp_cast_3 ) , min( max( lerpResult1954 , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1904 = dot(temp_output_1706_0, float3(0.299,0.587,0.114));
				float3 temp_cast_10 = (grayscale1904).xxx;
				float3 lerpResult1903 = lerp( temp_output_1706_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1903;
				float EyeLightFactor1707 = _EyeLightFactor;
				float4 lerpResult1711 = lerp( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) , ( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) * float4( LightColor208 , 0.0 ) ) , EyeLightFactor1707);
				float3 appendResult1304 = (float3(_hi00Strength , _hi01Strength , _hi02Strength));
				float2 uv_hi00 = i.ase_texcoord1.xy * _hi00_ST.xy + _hi00_ST.zw;
				float4 temp_cast_12 = (_hi00Step).xxxx;
				float2 uv_hi01 = i.ase_texcoord1.xy * _hi01_ST.xy + _hi01_ST.zw;
				float4 temp_cast_13 = (_hi01Step).xxxx;
				float2 uv_hi02 = i.ase_texcoord1.xy * _hi02_ST.xy + _hi02_ST.zw;
				float4 temp_cast_14 = (_hi02Step).xxxx;
				float3 weightedBlendVar1307 = appendResult1304;
				float4 weightedBlend1307 = ( weightedBlendVar1307.x*(( _hi00Toggle )?( saturate( ( ( tex2D( _hi00, uv_hi00 ) - temp_cast_12 ) / _hi00StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.y*(( _hi01Toggle )?( saturate( ( ( tex2D( _hi01, uv_hi01 ) - temp_cast_13 ) / _hi01StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.z*(( _hi02Toggle )?( saturate( ( ( tex2D( _hi02, uv_hi02 ) - temp_cast_14 ) / _hi02StepFeather ) ) ):( float4( 0,0,0,0 ) )) );
				float4 lerpResult1378 = lerp( weightedBlend1307 , ( weightedBlend1307 * Shadow1322 ) , shad_lerp1312);
				float HighlightLightFactor1710 = _HighlightLightFactor;
				float4 lerpResult1712 = lerp( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) , ( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) * float4( LightColor208 , 0.0 ) ) , HighlightLightFactor1710);
				float4 blend_diff916 = ( lerpResult1711 + lerpResult1712 );
				float GlobalLightFactor1719 = _GlobalLightFactor;
				float4 lerpResult1723 = lerp( ( _CharaColor * blend_diff916 ) , ( _CharaColor * blend_diff916 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1719);
				float2 uv_EmiTex = i.ase_texcoord1.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float4 Refined_diff612 = ( lerpResult1723 + ( Emissive600 * _EmissiveColor * _EmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_17 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_17 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				
				
				outColor = output_diff618.rgb;
				outAlpha = 1;
				return float4(outColor,outAlpha);
			}
			ENDCG
		}
		
		
		Pass
		{
			Name "ForwardAdd"
			Tags { "LightMode"="ForwardAdd" }
			ZWrite Off
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend One One, Zero One
			BlendOp Max, Max
			AlphaToMask Off
			Cull [_CullMode]
			ColorMask RGBA
			Stencil
			{
				Ref [_StencilReference]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilComparison]
				Pass [_StencilPassFront]
				Fail [_StencilFailFront]
				ZFail [_StencilZFailFront]
			}
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdadd_fullshadows
			#ifndef UNITY_PASS_FORWARDADD
			#define UNITY_PASS_FORWARDADD
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1

			//This is a late directive
			
			uniform float _StencilZFailFront;
			uniform float _StencilFailFront;
			uniform float _StencilPassFront;
			uniform float _StencilComparison;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float _UseCustomTransform;
			uniform float _FakeEyeTrackingL;
			uniform float3 _VertexOffsetL;
			uniform float _ObjectSpace;
			uniform float3 _FaceForward;
			uniform float3 _FaceUp;
			uniform float3 _FaceCenterPos;
			uniform float4 _WorkingAngleLxxyy;
			uniform float4 _MoveRangeLxxyy;
			uniform float _IsBlenderCoordinateSystem;
			uniform float3 _XAxisVectorL;
			uniform float3 _YAxisVectorL;
			uniform float _FakeEyeTrackingR;
			uniform float3 _VertexOffsetR;
			uniform float4 _WorkingAngleRxxyy;
			uniform float4 _MoveRangeRxxyy;
			uniform float3 _XAxisVectorR;
			uniform float3 _YAxisVectorR;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float _EyeShadow;
			uniform sampler2D _MainTex;
			uniform float4 _EyeTilingOffset;
			uniform float4 _AdditionalDiffuseColor;
			uniform float4 _Shadow;
			uniform float _ShadowStep;
			uniform float _ReceiveShadowLerp;
			uniform float _ShadowFeather;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _EyeLightFactor;
			uniform float _HighLightShadow;
			uniform float _hi00Strength;
			uniform float _hi01Strength;
			uniform float _hi02Strength;
			uniform float _hi00Toggle;
			uniform sampler2D _hi00;
			uniform float4 _hi00_ST;
			uniform float _hi00Step;
			uniform float _hi00StepFeather;
			uniform float _hi01Toggle;
			uniform sampler2D _hi01;
			uniform float4 _hi01_ST;
			uniform float _hi01Step;
			uniform float _hi01StepFeather;
			uniform float _hi02Toggle;
			uniform sampler2D _hi02;
			uniform float4 _hi02_ST;
			uniform float _hi02Step;
			uniform float _hi02StepFeather;
			uniform float _HighlightLightFactor;
			uniform float _GlobalLightFactor;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform float _Saturation;
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float IsThereALight(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			
			float PureLightAttenuation( float3 worldPos )
			{
				#ifdef POINT
				        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz; \
				        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))
				#else
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord
				#endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#ifdef DIRECTIONAL
				        return 1;
				#endif
				#ifdef POINT_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w;
				#endif
				#ifdef DIRECTIONAL_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTexture0, lightCoord).w;
				#endif
			}
			
			float3 ShadeSH9out( half4 Normal )
			{
				return ShadeSH9(Normal);
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_SHADOW_COORDS(4)
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 objToWorldDir1408 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceForward, 0 ) ).xyz );
				float3 Forward1412 = ( _ObjectSpace == 0.0 ? _FaceForward : objToWorldDir1408 );
				float isObjectSpace1918 = _ObjectSpace;
				float3 objToWorldDir1409 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz );
				float3 Up1413 = ( isObjectSpace1918 == 0.0 ? _FaceUp : objToWorldDir1409 );
				float3 normalizeResult1447 = normalize( cross( Forward1412 , Up1413 ) );
				float3 Left1411 = normalizeResult1447;
				float3 objToWorld1423 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 temp_output_1924_0 = ( isObjectSpace1918 == 0.0 ? _FaceCenterPos : objToWorld1423 );
				float3 normalizeResult1448 = normalize( ( _WorldSpaceCameraPos - temp_output_1924_0 ) );
				float3 Center2Cam1429 = normalizeResult1448;
				float dotResult1419 = dot( (Left1411).xz , (Center2Cam1429).xz );
				float Xsign1853 = sign( dotResult1419 );
				float3 FCenterPos1479 = temp_output_1924_0;
				float3 temp_output_1499_0 = ( _WorldSpaceCameraPos - FCenterPos1479 );
				float3 normalizeResult1500 = normalize( temp_output_1499_0 );
				float dotResult1503 = dot( normalizeResult1500 , Up1413 );
				float3 normalizeResult1512 = normalize( ( _WorldSpaceCameraPos - ( ( dotResult1503 * length( temp_output_1499_0 ) * Up1413 ) + FCenterPos1479 ) ) );
				float3 Cylinder1675 = normalizeResult1512;
				float dotResult1450 = dot( Forward1412 , Cylinder1675 );
				float Xvalue1856 = acos( dotResult1450 );
				float dotResult1465 = dot( Up1413 , Center2Cam1429 );
				float Ysign1863 = sign( dotResult1465 );
				float dotResult1794 = dot( Center2Cam1429 , Cylinder1675 );
				float Yvalue1859 = acos( dotResult1794 );
				float3 appendResult1441 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1741 = (float3(-_XAxisVectorL.x , _XAxisVectorL.z , -_XAxisVectorL.y));
				float3 normalizeResult1747 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1741 : _XAxisVectorL ) );
				float3 appendResult1742 = (float3(-_YAxisVectorL.x , _YAxisVectorL.z , -_YAxisVectorL.y));
				float3 normalizeResult1748 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1742 : _YAxisVectorL ) );
				float3 normalizeResult1749 = ASESafeNormalize( cross( normalizeResult1747 , normalizeResult1748 ) );
				float3x3 CustomMatrixL1745 = float3x3(normalizeResult1747, normalizeResult1748, normalizeResult1749);
				float3 appendResult1849 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1752 = (float3(-_XAxisVectorR.x , _XAxisVectorR.z , -_XAxisVectorR.y));
				float3 normalizeResult1758 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1752 : _XAxisVectorR ) );
				float3 break1765 = -_YAxisVectorR;
				float3 appendResult1756 = (float3(-break1765.x , break1765.z , -break1765.y));
				float3 normalizeResult1757 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1756 : -_YAxisVectorR ) );
				float3 normalizeResult1762 = ASESafeNormalize( cross( normalizeResult1758 , normalizeResult1757 ) );
				float3x3 CustomMatrixR1760 = float3x3(normalizeResult1758, normalizeResult1757, normalizeResult1762);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				
				v.vertex.xyz += ( v.ase_texcoord.y >= 0.5 ? ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )), CustomMatrixL1745 ) : (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )) ) : ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )), CustomMatrixR1760 ) : (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )) ) );
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 appendResult1932 = (float2(_EyeTilingOffset.x , _EyeTilingOffset.y));
				float2 appendResult1933 = (float2(_EyeTilingOffset.z , _EyeTilingOffset.w));
				float2 texCoord1931 = i.ase_texcoord1.xy * appendResult1932 + appendResult1933;
				float4 temp_output_1425_0 = ( tex2D( _MainTex, texCoord1931 ) * _AdditionalDiffuseColor );
				float4 Shadow1322 = _Shadow;
				float localIsThereALight797 = IsThereALight();
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float dotResult779 = dot( worldSpaceLightDir , ase_worldNormal );
				float HalfLambertTerm781 = ( localIsThereALight797 == 1.0 ? (dotResult779*0.5 + 0.5) : 1.0 );
				float localIsThereALight1917 = IsThereALight();
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float HalfShadowAttenuation1911 = ( localIsThereALight1917 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp1312 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( HalfLambertTerm781 * HalfShadowAttenuation1911 ) ):( HalfLambertTerm781 )) ) / _ShadowFeather ) );
				float4 lerpResult1325 = lerp( temp_output_1425_0 , ( temp_output_1425_0 * Shadow1322 ) , shad_lerp1312);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1927_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 worldPos1898 = ase_worldPos;
				float localPureLightAttenuation1898 = PureLightAttenuation( worldPos1898 );
				float3 temp_output_1899_0 = ( temp_output_1927_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1898 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1901 = temp_output_1899_0;
				#else
				float3 staticSwitch1901 = temp_output_1927_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float4 appendResult1955 = (float4(ase_worldNormal , 1.0));
				float4 Normal1952 = appendResult1955;
				float3 localShadeSH9out1952 = ShadeSH9out( Normal1952 );
				float3 appendResult1962 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1963 = ASESafeNormalize( appendResult1962 );
				float4 appendResult1964 = (float4(normalizeResult1963 , _IndirectLightBiasSample1.w));
				float4 Normal1965 = appendResult1964;
				float3 localShadeSH9out1965 = ShadeSH9out( Normal1965 );
				float3 appendResult1958 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1959 = ASESafeNormalize( appendResult1958 );
				float4 appendResult1960 = (float4(normalizeResult1959 , _IndirectLightBiasSample2.w));
				float4 Normal1961 = appendResult1960;
				float3 localShadeSH9out1961 = ShadeSH9out( Normal1961 );
				float3 lerpResult1954 = lerp( localShadeSH9out1952 , max( localShadeSH9out1965 , localShadeSH9out1961 ) , _IndirectBiasSampleRate);
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1706_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1901 ):( temp_output_1899_0 )) , temp_cast_3 ) , min( max( lerpResult1954 , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1904 = dot(temp_output_1706_0, float3(0.299,0.587,0.114));
				float3 temp_cast_10 = (grayscale1904).xxx;
				float3 lerpResult1903 = lerp( temp_output_1706_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1903;
				float EyeLightFactor1707 = _EyeLightFactor;
				float4 lerpResult1711 = lerp( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) , ( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) * float4( LightColor208 , 0.0 ) ) , EyeLightFactor1707);
				float3 appendResult1304 = (float3(_hi00Strength , _hi01Strength , _hi02Strength));
				float2 uv_hi00 = i.ase_texcoord1.xy * _hi00_ST.xy + _hi00_ST.zw;
				float4 temp_cast_12 = (_hi00Step).xxxx;
				float2 uv_hi01 = i.ase_texcoord1.xy * _hi01_ST.xy + _hi01_ST.zw;
				float4 temp_cast_13 = (_hi01Step).xxxx;
				float2 uv_hi02 = i.ase_texcoord1.xy * _hi02_ST.xy + _hi02_ST.zw;
				float4 temp_cast_14 = (_hi02Step).xxxx;
				float3 weightedBlendVar1307 = appendResult1304;
				float4 weightedBlend1307 = ( weightedBlendVar1307.x*(( _hi00Toggle )?( saturate( ( ( tex2D( _hi00, uv_hi00 ) - temp_cast_12 ) / _hi00StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.y*(( _hi01Toggle )?( saturate( ( ( tex2D( _hi01, uv_hi01 ) - temp_cast_13 ) / _hi01StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.z*(( _hi02Toggle )?( saturate( ( ( tex2D( _hi02, uv_hi02 ) - temp_cast_14 ) / _hi02StepFeather ) ) ):( float4( 0,0,0,0 ) )) );
				float4 lerpResult1378 = lerp( weightedBlend1307 , ( weightedBlend1307 * Shadow1322 ) , shad_lerp1312);
				float HighlightLightFactor1710 = _HighlightLightFactor;
				float4 lerpResult1712 = lerp( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) , ( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) * float4( LightColor208 , 0.0 ) ) , HighlightLightFactor1710);
				float4 blend_diff916 = ( lerpResult1711 + lerpResult1712 );
				float GlobalLightFactor1719 = _GlobalLightFactor;
				float4 lerpResult1723 = lerp( ( _CharaColor * blend_diff916 ) , ( _CharaColor * blend_diff916 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1719);
				float2 uv_EmiTex = i.ase_texcoord1.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float4 Refined_diff612 = ( lerpResult1723 + ( Emissive600 * _EmissiveColor * _EmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_17 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_17 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				
				
				outColor = output_diff618.rgb;
				outAlpha = 1;
				return float4(outColor,outAlpha);
			}
			ENDCG
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ZWrite On
			ZTest LEqual
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_shadowcaster
			#ifndef UNITY_PASS_SHADOWCASTER
			#define UNITY_PASS_SHADOWCASTER
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1

			//This is a late directive
			
			uniform float _StencilZFailFront;
			uniform float _StencilFailFront;
			uniform float _StencilPassFront;
			uniform float _StencilComparison;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float _UseCustomTransform;
			uniform float _FakeEyeTrackingL;
			uniform float3 _VertexOffsetL;
			uniform float _ObjectSpace;
			uniform float3 _FaceForward;
			uniform float3 _FaceUp;
			uniform float3 _FaceCenterPos;
			uniform float4 _WorkingAngleLxxyy;
			uniform float4 _MoveRangeLxxyy;
			uniform float _IsBlenderCoordinateSystem;
			uniform float3 _XAxisVectorL;
			uniform float3 _YAxisVectorL;
			uniform float _FakeEyeTrackingR;
			uniform float3 _VertexOffsetR;
			uniform float4 _WorkingAngleRxxyy;
			uniform float4 _MoveRangeRxxyy;
			uniform float3 _XAxisVectorR;
			uniform float3 _YAxisVectorR;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float _EyeShadow;
			uniform sampler2D _MainTex;
			uniform float4 _EyeTilingOffset;
			uniform float4 _AdditionalDiffuseColor;
			uniform float4 _Shadow;
			uniform float _ShadowStep;
			uniform float _ReceiveShadowLerp;
			uniform float _ShadowFeather;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _EyeLightFactor;
			uniform float _HighLightShadow;
			uniform float _hi00Strength;
			uniform float _hi01Strength;
			uniform float _hi02Strength;
			uniform float _hi00Toggle;
			uniform sampler2D _hi00;
			uniform float4 _hi00_ST;
			uniform float _hi00Step;
			uniform float _hi00StepFeather;
			uniform float _hi01Toggle;
			uniform sampler2D _hi01;
			uniform float4 _hi01_ST;
			uniform float _hi01Step;
			uniform float _hi01StepFeather;
			uniform float _hi02Toggle;
			uniform sampler2D _hi02;
			uniform float4 _hi02_ST;
			uniform float _hi02Step;
			uniform float _hi02StepFeather;
			uniform float _HighlightLightFactor;
			uniform float _GlobalLightFactor;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform float _Saturation;
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float IsThereALight(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			
			float PureLightAttenuation( float3 worldPos )
			{
				#ifdef POINT
				        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz; \
				        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))
				#else
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord
				#endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#ifdef DIRECTIONAL
				        return 1;
				#endif
				#ifdef POINT_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w;
				#endif
				#ifdef DIRECTIONAL_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTexture0, lightCoord).w;
				#endif
			}
			
			float3 ShadeSH9out( half4 Normal )
			{
				return ShadeSH9(Normal);
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
			};
			
			struct v2f
			{
				V2F_SHADOW_CASTER;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_SHADOW_COORDS(4)
			};

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 objToWorldDir1408 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceForward, 0 ) ).xyz );
				float3 Forward1412 = ( _ObjectSpace == 0.0 ? _FaceForward : objToWorldDir1408 );
				float isObjectSpace1918 = _ObjectSpace;
				float3 objToWorldDir1409 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz );
				float3 Up1413 = ( isObjectSpace1918 == 0.0 ? _FaceUp : objToWorldDir1409 );
				float3 normalizeResult1447 = normalize( cross( Forward1412 , Up1413 ) );
				float3 Left1411 = normalizeResult1447;
				float3 objToWorld1423 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 temp_output_1924_0 = ( isObjectSpace1918 == 0.0 ? _FaceCenterPos : objToWorld1423 );
				float3 normalizeResult1448 = normalize( ( _WorldSpaceCameraPos - temp_output_1924_0 ) );
				float3 Center2Cam1429 = normalizeResult1448;
				float dotResult1419 = dot( (Left1411).xz , (Center2Cam1429).xz );
				float Xsign1853 = sign( dotResult1419 );
				float3 FCenterPos1479 = temp_output_1924_0;
				float3 temp_output_1499_0 = ( _WorldSpaceCameraPos - FCenterPos1479 );
				float3 normalizeResult1500 = normalize( temp_output_1499_0 );
				float dotResult1503 = dot( normalizeResult1500 , Up1413 );
				float3 normalizeResult1512 = normalize( ( _WorldSpaceCameraPos - ( ( dotResult1503 * length( temp_output_1499_0 ) * Up1413 ) + FCenterPos1479 ) ) );
				float3 Cylinder1675 = normalizeResult1512;
				float dotResult1450 = dot( Forward1412 , Cylinder1675 );
				float Xvalue1856 = acos( dotResult1450 );
				float dotResult1465 = dot( Up1413 , Center2Cam1429 );
				float Ysign1863 = sign( dotResult1465 );
				float dotResult1794 = dot( Center2Cam1429 , Cylinder1675 );
				float Yvalue1859 = acos( dotResult1794 );
				float3 appendResult1441 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1741 = (float3(-_XAxisVectorL.x , _XAxisVectorL.z , -_XAxisVectorL.y));
				float3 normalizeResult1747 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1741 : _XAxisVectorL ) );
				float3 appendResult1742 = (float3(-_YAxisVectorL.x , _YAxisVectorL.z , -_YAxisVectorL.y));
				float3 normalizeResult1748 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1742 : _YAxisVectorL ) );
				float3 normalizeResult1749 = ASESafeNormalize( cross( normalizeResult1747 , normalizeResult1748 ) );
				float3x3 CustomMatrixL1745 = float3x3(normalizeResult1747, normalizeResult1748, normalizeResult1749);
				float3 appendResult1849 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1752 = (float3(-_XAxisVectorR.x , _XAxisVectorR.z , -_XAxisVectorR.y));
				float3 normalizeResult1758 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1752 : _XAxisVectorR ) );
				float3 break1765 = -_YAxisVectorR;
				float3 appendResult1756 = (float3(-break1765.x , break1765.z , -break1765.y));
				float3 normalizeResult1757 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1756 : -_YAxisVectorR ) );
				float3 normalizeResult1762 = ASESafeNormalize( cross( normalizeResult1758 , normalizeResult1757 ) );
				float3x3 CustomMatrixR1760 = float3x3(normalizeResult1758, normalizeResult1757, normalizeResult1762);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				
				v.vertex.xyz += ( v.ase_texcoord.y >= 0.5 ? ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )), CustomMatrixL1745 ) : (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )) ) : ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )), CustomMatrixR1760 ) : (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )) ) );
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 appendResult1932 = (float2(_EyeTilingOffset.x , _EyeTilingOffset.y));
				float2 appendResult1933 = (float2(_EyeTilingOffset.z , _EyeTilingOffset.w));
				float2 texCoord1931 = i.ase_texcoord1.xy * appendResult1932 + appendResult1933;
				float4 temp_output_1425_0 = ( tex2D( _MainTex, texCoord1931 ) * _AdditionalDiffuseColor );
				float4 Shadow1322 = _Shadow;
				float localIsThereALight797 = IsThereALight();
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float dotResult779 = dot( worldSpaceLightDir , ase_worldNormal );
				float HalfLambertTerm781 = ( localIsThereALight797 == 1.0 ? (dotResult779*0.5 + 0.5) : 1.0 );
				float localIsThereALight1917 = IsThereALight();
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float HalfShadowAttenuation1911 = ( localIsThereALight1917 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp1312 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( HalfLambertTerm781 * HalfShadowAttenuation1911 ) ):( HalfLambertTerm781 )) ) / _ShadowFeather ) );
				float4 lerpResult1325 = lerp( temp_output_1425_0 , ( temp_output_1425_0 * Shadow1322 ) , shad_lerp1312);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1927_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 worldPos1898 = ase_worldPos;
				float localPureLightAttenuation1898 = PureLightAttenuation( worldPos1898 );
				float3 temp_output_1899_0 = ( temp_output_1927_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1898 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1901 = temp_output_1899_0;
				#else
				float3 staticSwitch1901 = temp_output_1927_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float4 appendResult1955 = (float4(ase_worldNormal , 1.0));
				float4 Normal1952 = appendResult1955;
				float3 localShadeSH9out1952 = ShadeSH9out( Normal1952 );
				float3 appendResult1962 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1963 = ASESafeNormalize( appendResult1962 );
				float4 appendResult1964 = (float4(normalizeResult1963 , _IndirectLightBiasSample1.w));
				float4 Normal1965 = appendResult1964;
				float3 localShadeSH9out1965 = ShadeSH9out( Normal1965 );
				float3 appendResult1958 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1959 = ASESafeNormalize( appendResult1958 );
				float4 appendResult1960 = (float4(normalizeResult1959 , _IndirectLightBiasSample2.w));
				float4 Normal1961 = appendResult1960;
				float3 localShadeSH9out1961 = ShadeSH9out( Normal1961 );
				float3 lerpResult1954 = lerp( localShadeSH9out1952 , max( localShadeSH9out1965 , localShadeSH9out1961 ) , _IndirectBiasSampleRate);
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1706_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1901 ):( temp_output_1899_0 )) , temp_cast_3 ) , min( max( lerpResult1954 , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1904 = dot(temp_output_1706_0, float3(0.299,0.587,0.114));
				float3 temp_cast_10 = (grayscale1904).xxx;
				float3 lerpResult1903 = lerp( temp_output_1706_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1903;
				float EyeLightFactor1707 = _EyeLightFactor;
				float4 lerpResult1711 = lerp( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) , ( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) * float4( LightColor208 , 0.0 ) ) , EyeLightFactor1707);
				float3 appendResult1304 = (float3(_hi00Strength , _hi01Strength , _hi02Strength));
				float2 uv_hi00 = i.ase_texcoord1.xy * _hi00_ST.xy + _hi00_ST.zw;
				float4 temp_cast_12 = (_hi00Step).xxxx;
				float2 uv_hi01 = i.ase_texcoord1.xy * _hi01_ST.xy + _hi01_ST.zw;
				float4 temp_cast_13 = (_hi01Step).xxxx;
				float2 uv_hi02 = i.ase_texcoord1.xy * _hi02_ST.xy + _hi02_ST.zw;
				float4 temp_cast_14 = (_hi02Step).xxxx;
				float3 weightedBlendVar1307 = appendResult1304;
				float4 weightedBlend1307 = ( weightedBlendVar1307.x*(( _hi00Toggle )?( saturate( ( ( tex2D( _hi00, uv_hi00 ) - temp_cast_12 ) / _hi00StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.y*(( _hi01Toggle )?( saturate( ( ( tex2D( _hi01, uv_hi01 ) - temp_cast_13 ) / _hi01StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.z*(( _hi02Toggle )?( saturate( ( ( tex2D( _hi02, uv_hi02 ) - temp_cast_14 ) / _hi02StepFeather ) ) ):( float4( 0,0,0,0 ) )) );
				float4 lerpResult1378 = lerp( weightedBlend1307 , ( weightedBlend1307 * Shadow1322 ) , shad_lerp1312);
				float HighlightLightFactor1710 = _HighlightLightFactor;
				float4 lerpResult1712 = lerp( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) , ( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) * float4( LightColor208 , 0.0 ) ) , HighlightLightFactor1710);
				float4 blend_diff916 = ( lerpResult1711 + lerpResult1712 );
				float GlobalLightFactor1719 = _GlobalLightFactor;
				float4 lerpResult1723 = lerp( ( _CharaColor * blend_diff916 ) , ( _CharaColor * blend_diff916 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1719);
				float2 uv_EmiTex = i.ase_texcoord1.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float4 Refined_diff612 = ( lerpResult1723 + ( Emissive600 * _EmissiveColor * _EmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_17 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_17 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				
				
				outColor = output_diff618.rgb;
				outAlpha = 1;
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	CustomEditor "ASEMaterialInspector"
	
	Fallback Off
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.CommentaryNode;1968;-2970.112,-833.6594;Inherit;False;2272.424;1453.406;;58;1718;1719;1709;1710;1708;1707;1706;1900;1901;1899;1903;1904;1905;773;825;1897;1898;208;1907;1908;1909;1910;1916;1911;1917;1882;780;779;778;776;797;800;781;1927;1895;1896;1928;826;1929;1930;1952;1954;1955;1956;1957;1958;1959;1960;1961;1962;1963;1964;1965;1966;303;301;1967;1969;Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1935;-3120.186,729.8014;Inherit;False;2511.504;763.3524;;31;1345;1325;1323;1324;1318;1359;1425;932;1390;1713;1711;1424;1309;1310;1312;1316;1322;1321;1314;1315;1912;1913;1914;1317;1380;916;933;1931;1932;1933;1934;Main Blend;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1925;-4392.907,2798.858;Inherit;False;1833.769;745.6455;;25;1415;1422;1420;1448;1414;1410;1447;1429;1411;1421;1923;1423;1924;1479;1407;1409;1413;1405;1408;1919;1412;1918;1920;1921;1922;HeadBoneTransform;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1880;-4061.302,4568.221;Inherit;False;1668.578;944.9541;;35;1747;1735;1745;1875;1876;1733;1741;1739;1743;1740;1742;1744;1734;1877;1748;1736;1749;1752;1750;1763;1758;1759;1760;1878;1753;1879;1756;1755;1754;1765;1764;1751;1757;1761;1762;Custom Transform;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1874;-746.8922,2961.557;Inherit;False;1249.787;829.2251;;16;1399;1597;1398;1746;1726;1871;1872;1766;1802;1804;1731;1732;1873;1728;1729;1730;Vertex Fuction Output;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1869;-2359.336,4297.288;Inherit;False;1570.03;1315.75;;31;1806;1807;1808;1809;1810;1811;1812;1813;1814;1826;1827;1828;1829;1830;1831;1832;1837;1838;1839;1840;1846;1847;1848;1849;1850;1825;1841;1855;1858;1864;1867;RightEyeTracking;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1868;-2365.5,2877.605;Inherit;False;1570.031;1309.381;;31;1457;1458;1777;1778;1455;1782;1776;1771;1438;1789;1770;1783;1509;1510;1792;1797;1800;1508;1791;1798;1799;1769;1786;1801;1790;1441;1460;1854;1857;1862;1866;LeftEyeTracking;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1865;-3977.381,3562.524;Inherit;False;1512.629;875.1907;;34;1499;1500;1501;1502;1503;1504;1505;1506;1496;1512;1675;1497;1430;1418;1416;1417;1419;1428;1853;1450;1454;1453;1452;1856;1465;1466;1463;1461;1794;1795;1796;1793;1859;1863;Tracking PreCaculate;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1696;-3436.558,1533.084;Inherit;False;2589.269;1182.234;;38;1307;1304;1378;1376;1377;1379;1382;1234;1285;1286;1370;1389;1342;1683;1679;1678;1681;1682;913;65;1343;1686;1687;1688;1689;1690;1344;1691;1692;1693;1253;1252;66;914;1694;1695;1712;1714;HighLight Blend;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;911;-3689.378,277.36;Inherit;False;563.0215;1092.147;;10;345;888;906;907;889;908;909;910;68;600;Texture Input;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;870;-620.4099,505.4407;Inherit;False;356.8159;717.053;;7;869;865;864;868;866;867;863;Stencil;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;643;-601.8802,1347.168;Inherit;False;946.0739;1196.966;;19;609;610;605;604;611;606;612;602;613;616;614;617;615;618;1697;1720;1721;1722;1723;Emissive and other Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;600;-3350.354,1139.867;Inherit;False;Emissive;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;889;-3372.952,728.0302;Inherit;False;_hi01;-1;True;1;0;SAMPLER2D;0,0,0,0;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;910;-3368.124,928.8741;Inherit;False;_hi02;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-512.1442,2338.781;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;614;-263.2475,2199.979;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;616;-139.797,2250.183;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;617;-563.7191,2426.13;Inherit;False;Property;_Saturation;Saturation;30;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;618;132.6317,2238.969;Inherit;False;output_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;610;-212.5704,1797.96;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;869;-533.9653,1106.494;Inherit;False;Property;_StencilZFailFront;Stencil ZFailFront;67;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;868;-532.9438,1017.606;Inherit;False;Property;_StencilFailFront;Stencil FailFront;66;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;864;-533.2119,925.4492;Inherit;False;Property;_StencilPassFront;Stencil PassFront;65;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;865;-535.2554,831.3844;Inherit;False;Property;_StencilComparison;Stencil Comparison;64;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;866;-563.5936,733.5771;Inherit;False;Property;_StencilWriteMask;Stencil WriteMask;63;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;-568.7032,644.6902;Inherit;False;Property;_StencilReadMask;Stencil ReadMask;62;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;863;-570.4095,555.4409;Inherit;False;Property;_StencilReference;Stencil Reference;61;1;[Header];Create;True;1;Stencil Buffer;0;0;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.SummedBlendNode;1307;-2121.013,1981.238;Inherit;False;5;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;1304;-2332.288,1644.057;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1378;-1653.802,2046.864;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1376;-2106.536,2147.459;Inherit;False;1322;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1377;-1937.923,2090.16;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1379;-1813.105,2155.886;Inherit;False;1312;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1382;-1511.849,1984.281;Inherit;False;Property;_HighLightShadow;HighLightShadow;4;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1234;-2616.206,1583.084;Inherit;False;Property;_hi00Strength;hi00 Strength;15;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1285;-2614.188,1664.478;Inherit;False;Property;_hi01Strength;hi01 Strength;20;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1286;-2609.797,1744.6;Inherit;False;Property;_hi02Strength;hi02 Strength;25;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1370;-1469.797,2094.982;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1389;-1279.998,2061.815;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1342;-2394.567,1826.185;Inherit;False;Property;_hi00Toggle;hi00 Toggle;11;0;Create;True;0;0;0;False;1;Header(HighLight00);False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1683;-2904.558,1848.316;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1679;-2679.442,1853.733;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1678;-2555.941,1855.034;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1681;-3195.556,2032.417;Inherit;False;Property;_hi00Step;hi00Step;13;0;Create;True;0;0;0;False;0;False;0;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1682;-2911.86,2034.515;Inherit;False;Property;_hi00StepFeather;hi00StepFeather;14;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;913;-3384.915,1837.552;Inherit;False;888;_hi00;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1343;-2385.438,2109.585;Inherit;False;Property;_hi01Toggle;hi01 Toggle;16;0;Create;True;0;0;0;False;1;Header(HighLight01);False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1686;-2898.422,2134.892;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1687;-2673.306,2140.309;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1688;-2549.805,2141.61;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1689;-3189.421,2309.491;Inherit;False;Property;_hi01Step;hi01Step;18;0;Create;True;0;0;0;False;0;False;0;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1690;-2901.558,2313.173;Inherit;False;Property;_hi01StepFeather;hi01StepFeather;19;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1344;-2385.766,2401.178;Inherit;False;Property;_hi02Toggle;hi02 Toggle;21;0;Create;True;0;0;0;False;1;Header(HighLight02);False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1691;-2896.075,2421.038;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1692;-2670.959,2426.455;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1693;-2547.458,2427.756;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1253;-3374.176,2408.778;Inherit;False;910;_hi02;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SamplerNode;1252;-3197.627,2408.225;Inherit;True;Property;_HighLight3;HighLight02;6;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;66;-3210.849,2114.628;Inherit;True;Property;_HighLight01;HighLight01;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;914;-3384.539,2113.52;Inherit;False;889;_hi01;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;1694;-3187.074,2595.637;Inherit;False;Property;_hi02Step;hi02Step;23;0;Create;True;0;0;0;False;0;False;0;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1695;-2899.211,2599.319;Inherit;False;Property;_hi02StepFeather;hi02StepFeather;24;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;888;-3369.182,526.5605;Inherit;False;_hi00;-1;True;1;0;SAMPLER2D;0,0,0,0;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;345;-3379.124,318.6331;Inherit;False;_eye;-1;True;1;0;SAMPLER2D;0,0,0,0;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SamplerNode;65;-3212.304,1840.231;Inherit;True;Property;_HighLight0;HighLight0;1;1;[Header];Create;True;1;Shadow;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;908;-3630.479,727.13;Inherit;True;Property;_hi01;HighLight01 (_hi01);17;0;Create;False;0;0;0;False;0;False;None;a8a103ca80612c44882fd0265ec16a8b;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;909;-3630.473,930.1114;Inherit;True;Property;_hi02;HighLight02 (_hi02);22;0;Create;False;0;0;0;False;0;False;None;cbc89d6e9af9d474094d8c98c93b4519;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;907;-3634.948,525.9529;Inherit;True;Property;_hi00;HighLight0 (_hi00);12;0;Create;False;0;0;0;False;0;False;None;54d97392ddf2dd64a8ce854afd9582e4;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;68;-3639.376,1139.507;Inherit;True;Property;_EmiTex;Emissive (_emi) [optional];26;1;[Header];Create;False;1;Emissive and Other;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;609;-499.472,1747.211;Inherit;False;600;Emissive;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1697;-552.4951,2025.478;Inherit;False;Property;_EmmisiveStrength;EmmisiveStrength;28;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1702;538.3658,1799.995;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1698;538.3658,1661.995;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1701;559.4426,2028.477;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;1714;-1380.12,2186.869;Inherit;False;1710;HighlightLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1712;-1116.452,1993.14;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;611;-523.3725,1836.114;Inherit;False;Property;_EmissiveColor;EmissiveColor;27;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;615;-523.7452,2153.081;Inherit;False;Property;_UnsaturationColor;UnsaturationColor;31;1;[HDR];Create;True;0;0;0;False;0;False;0.2117647,0.7137255,0.07058824,0;0.2117647,0.7137255,0.07058824,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;1715;-185.392,1000.932;Inherit;False;225;166;;1;1716;Cull;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1716;-135.392,1050.931;Inherit;False;Property;_CullMode;Cull Mode;68;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1700;453.0906,2350.346;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;4;1;False;;1;False;;1;0;False;;1;False;;True;5;False;;5;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;605;-542.1444,1574.089;Inherit;False;916;blend_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1720;-335.5077,1692.509;Inherit;False;1719;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;604;-315.8462,1561.11;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1722;-318.1076,1457.409;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1723;-147.8668,1503.37;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;606;29.08198,1677.367;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;612;155.4932,1674.52;Inherit;False;Refined_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1699;453.0906,2238.346;Float;False;True;-1;2;ASEMaterialInspector;100;12;LCumashader/Eye(AS);fe4af87006695164d84819765fe282b7;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;5;False;True;True;False;True;False;;False;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1499;-3696.403,3783.243;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1500;-3549.259,3774.318;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LengthOpNode;1501;-3539.962,3857.446;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1502;-3567.73,3936.268;Inherit;False;1413;Up;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1503;-3378.225,3826.365;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1504;-3251.256,3896.471;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1505;-3117.316,3949.937;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1506;-3858.981,3966.363;Inherit;False;1479;FCenterPos;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1496;-2972.884,3888.101;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1512;-2835.207,3900.758;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1675;-2692.368,3899.626;Inherit;False;Cylinder;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceCameraPos;1497;-3927.381,3612.524;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1430;-3916.556,4142.401;Inherit;False;1429;Center2Cam;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1418;-3742.825,4142.61;Inherit;False;True;False;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1416;-3904.958,4063.623;Inherit;False;1411;Left;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1417;-3742.758,4062.123;Inherit;False;True;False;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DotProductOpNode;1419;-3546.826,4090.611;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SignOpNode;1428;-3424.712,4092.608;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1853;-3308.201,4088.55;Inherit;False;Xsign;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1450;-2934.203,4089.262;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ACosOpNode;1454;-2810.741,4091.182;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1453;-3117.79,4059.851;Inherit;False;1412;Forward;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1452;-3119.205,4148.86;Inherit;False;1675;Cylinder;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1856;-2689.552,4084.593;Inherit;False;Xvalue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1465;-3640.105,4263.963;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SignOpNode;1466;-3517.992,4265.96;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1463;-3817.237,4234.975;Inherit;False;1413;Up;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1461;-3828.837,4313.754;Inherit;False;1429;Center2Cam;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1794;-3005.168,4270.3;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1795;-3194.635,4235.692;Inherit;False;1429;Center2Cam;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1796;-3190.852,4322.313;Inherit;False;1675;Cylinder;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ACosOpNode;1793;-2886.551,4270.482;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1859;-2766.169,4264.25;Inherit;False;Yvalue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1863;-3394.364,4261.119;Inherit;False;Ysign;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1457;-1749.165,3011.828;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1458;-1569.66,3013.265;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1777;-1752.733,3297.722;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1778;-1573.227,3299.159;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1455;-1956.072,2997.101;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1782;-1900.807,3072.979;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1776;-1954.839,3306.994;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1771;-1407.024,3300.936;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1438;-1408.861,3008.082;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1789;-2315.5,3483.943;Inherit;False;Property;_WorkingAngleLxxyy;+/-WorkingAngleL.xxyy;46;0;Create;True;0;0;0;False;0;False;30,45,30,30;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Compare;1770;-1176.302,2954.316;Inherit;False;5;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1783;-1896.309,3378.451;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1509;-1748.48,3702.776;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1510;-1569.858,3703.27;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1792;-1752.08,3978.84;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1797;-1573.458,3979.333;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1800;-1407.642,3969.849;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1508;-1948.733,3702.491;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1791;-1897.081,3783.203;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1798;-1948.773,3972.475;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1799;-1897.121,4053.185;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1769;-1690.436,3489.617;Inherit;False;Property;_MoveRangeLxxyy;+/-MoveRangeL.xxyy;45;0;Create;True;0;0;0;False;0;False;0.003,0.004,0.004,0.004;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NegateNode;1786;-1231.291,3298.517;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1801;-1236.111,3971.01;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1790;-1109.225,3862.818;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1441;-956.269,3365.455;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCRemapNode;1460;-1400.842,3697.986;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1854;-1394.787,2927.605;Inherit;False;1853;Xsign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1857;-1926.704,3198.014;Inherit;False;1856;Xvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1862;-1933.928,3884.327;Inherit;False;1859;Yvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1866;-1336.177,3878.398;Inherit;False;1863;Ysign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1806;-1743.001,4437.88;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1807;-1563.496,4439.317;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1808;-1746.569,4723.775;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1809;-1567.063,4725.211;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1810;-1949.908,4423.153;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1811;-1894.643,4499.032;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1812;-1948.675,4733.047;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1813;-1400.861,4726.988;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1814;-1402.698,4434.134;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1826;-1170.138,4380.369;Inherit;False;5;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1827;-1890.145,4804.502;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1828;-1742.316,5128.829;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1829;-1563.694,5129.322;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1830;-1745.916,5404.893;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1831;-1567.294,5405.386;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1832;-1401.478,5395.902;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1837;-1942.569,5128.543;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1838;-1890.917,5209.255;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1839;-1942.61,5398.527;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1840;-1890.958,5479.239;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1846;-1225.127,4724.57;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1847;-1229.948,5397.062;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1848;-1103.061,5288.871;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1849;-950.1057,4791.507;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCRemapNode;1850;-1394.678,5124.039;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1825;-2309.336,4909.996;Inherit;False;Property;_WorkingAngleRxxyy;+/-WorkingAngleR.xxyy;50;0;Create;True;0;0;0;False;0;False;45,30,30,30;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;1841;-1684.272,4915.668;Inherit;False;Property;_MoveRangeRxxyy;+/-MoveRangeR.xxyy;49;0;Create;True;0;0;0;False;0;False;0.004,0.003,0.004,0.004;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1855;-1385.918,4347.288;Inherit;False;1853;Xsign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1858;-1922.588,4616.724;Inherit;False;1856;Xvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1864;-1927.05,5313.07;Inherit;False;1859;Yvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1867;-1323.722,5303.791;Inherit;False;1863;Ysign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1399;-365.3116,3255.921;Inherit;False;Property;_FakeEyeTrackingL;FakeEyeTrackingL;44;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1597;-481.1573,3346.162;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1398;-696.8922,3248.503;Inherit;False;Property;_VertexOffsetL;Vertex OffsetL;43;1;[Header];Create;True;1;Vertex Function;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1726;-136.1975,3313.661;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1872;4.58773,3180.214;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1766;-360.0476,3662.945;Inherit;False;1760;CustomMatrixR;1;0;OBJECT;;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1802;-377.2906,3548.371;Inherit;False;Property;_FakeEyeTrackingR;FakeEyeTrackingR;48;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1804;-506.4134,3656.982;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1731;-688.907,3547.854;Inherit;False;Property;_VertexOffsetR;Vertex OffsetR;47;0;Create;True;1;Vertex Function;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1732;-135.9866,3619.686;Inherit;False;2;2;0;FLOAT3;0,1,1;False;1;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1873;9.479233,3477.768;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1728;323.2944,3132.945;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1729;157.6807,3134.827;Inherit;False;Constant;_0_6;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;1730;114.3092,3011.557;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalizeNode;1747;-3214.176,4626.403;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.MatrixFromVectors;1735;-2847.385,4624.064;Inherit;False;FLOAT3x3;True;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1745;-2636.682,4618.221;Inherit;False;CustomMatrixL;-1;True;1;0;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.RangedFloatNode;1875;-3631.085,4621.311;Inherit;False;Property;_IsBlenderCoordinateSystem;IsBlenderCoordinateSystem;52;1;[Toggle];Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1876;-3360.523,4619.781;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1733;-3837.864,4694.093;Inherit;False;Property;_XAxisVectorL;+X Axis Vector L;53;0;Create;True;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DynamicAppendNode;1741;-3524.196,4773.979;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1739;-3647.326,4768.639;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1743;-3652.396,4850.31;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1740;-3641.533,4964.331;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1742;-3518.646,4968.048;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1744;-3634.396,5039.92;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1734;-3839.452,4897.322;Inherit;False;Property;_YAxisVectorL;+Y Axis Vector L;54;0;Create;True;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Compare;1877;-3346.414,4835.953;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1748;-3205.036,4843.019;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;1736;-3009.423,4831.229;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1749;-2847.328,4841.464;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1752;-3504.552,5154.894;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1750;-3623.482,5154.955;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1763;-3839.244,5081.5;Inherit;False;Property;_XAxisVectorR;+X Axis Vector R;55;0;Create;True;2;Custom Transform Vector;(In Blender Coordinate System);0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1758;-3192.625,5016.822;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.MatrixFromVectors;1759;-2839.813,5019.672;Inherit;False;FLOAT3x3;True;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1760;-2622.324,5013.128;Inherit;False;CustomMatrixR;-1;True;1;0;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.Compare;1878;-3343.702,5014.316;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1753;-3633.241,5218.315;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1879;-3339.646,5182.196;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1756;-3461.533,5323.389;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1755;-3585.825,5402.775;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1754;-3584.42,5326.518;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1765;-3709.055,5327.655;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.NegateNode;1764;-3834.831,5261.131;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1751;-4011.302,5259.266;Inherit;False;Property;_YAxisVectorR;-Y Axis Vector R;56;0;Create;True;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1757;-3195.353,5191.298;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;1761;-3016.795,5208.261;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1762;-2861.03,5205.693;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1871;-236.2894,3440.137;Inherit;False;Property;_UseCustomTransform;Use Custom Transform;51;2;[Header];[Toggle];Create;True;1;Custom Transform Direction;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1721;-537.1075,1660.709;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1415;-3349.73,2984.41;Inherit;False;1413;Up;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1422;-3057.822,3158.562;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceCameraPos;1420;-3309.872,3073.191;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1448;-2924.438,3158.585;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1414;-3350.746,2909.168;Inherit;False;1412;Forward;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;1410;-3178.345,2934.381;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1447;-3026.438,2936.585;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1429;-2783.138,3154.208;Inherit;False;Center2Cam;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1411;-2886.345,2933.381;Inherit;False;Left;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1923;-3414.024,3235.97;Inherit;False;1918;isObjectSpace;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TransformPositionNode;1423;-3409.657,3356.504;Inherit;False;Object;World;False;Fast;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Compare;1924;-3213.814,3234.262;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1479;-3034.793,3267.958;Inherit;False;FCenterPos;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1407;-4333.443,3271.342;Inherit;False;Property;_FaceUp;FaceUp;60;0;Create;True;0;0;0;False;0;False;0,1,0;0,1,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TransformDirectionNode;1409;-4171.401,3347.02;Inherit;False;Object;World;True;Fast;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1413;-3805.845,3226.34;Inherit;False;Up;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1405;-4342.907,2981.155;Inherit;False;Property;_FaceForward;FaceForward;59;0;Create;True;0;0;0;False;0;False;0,0,1;0,0,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TransformDirectionNode;1408;-4174.755,3054.913;Inherit;False;Object;World;True;Fast;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1412;-3799.1,2935.616;Inherit;False;Forward;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1918;-3988.565,2848.858;Inherit;False;isObjectSpace;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1920;-3959.763,2933.969;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1921;-4165.03,3225.877;Inherit;False;1918;isObjectSpace;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1922;-3964.819,3225.365;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1919;-4166.157,2912.549;Inherit;False;Property;_ObjectSpace;ObjectSpace;57;2;[Header];[Toggle];Create;True;1;HeadBoneTransform;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1421;-3596.458,3282.04;Inherit;False;Property;_FaceCenterPos;FaceCenterPos;58;0;Create;True;1;Tracking Basis(In ObjectSpace);0;0;False;0;False;0,0.15,0;0,0.125,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1746;-338.301,3355.752;Inherit;False;1745;CustomMatrixL;1;0;OBJECT;;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.ColorNode;602;-572.1188,1397.168;Inherit;False;Property;_CharaColor;CharaColor;29;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1345;-1563.49,1087.527;Inherit;False;Property;_EyeShadow;EyeShadow;3;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1325;-1718.349,1166.166;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1323;-2186.064,1270.462;Inherit;False;1322;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1324;-2023.454,1209.163;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1318;-1891.511,1275.89;Inherit;False;1312;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1359;-1543.918,1197.279;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1425;-2150.787,1088.955;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;932;-2496.956,1079.57;Inherit;True;Property;_TextureSample0;Texture Sample 0;28;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1390;-1337.333,1174.046;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1713;-1389.893,1291.279;Inherit;False;1707;EyeLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1711;-1166.331,1098.98;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1424;-2456.704,1284.154;Inherit;False;Property;_AdditionalDiffuseColor;AdditionalDiffuseColor;2;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;1309;-1501.502,786.9654;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1310;-1636.203,787.2646;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1312;-1345.156,779.8014;Inherit;False;shad_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1316;-1805.417,783.7474;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1322;-1377.834,886.1426;Inherit;False;Shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1321;-1598.909,886.0547;Inherit;False;Property;_Shadow;Shadow;5;1;[HDR];Create;True;0;0;0;False;0;False;0.699,0.699,0.699,0;0.5188679,0.5188679,0.5188679,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1314;-2122.86,787.915;Inherit;False;Property;_ShadowStep;ShadowStep;6;0;Create;True;0;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1315;-1888.907,990.5788;Inherit;False;Property;_ShadowFeather;ShadowFeather;7;0;Create;True;0;0;0;False;0;False;0.01;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1912;-2170.629,950.5181;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1913;-2037.131,886.718;Inherit;False;Property;_ReceiveShadowLerp;ReceiveShadowLerp;8;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1914;-2426.201,966.6392;Inherit;False;1911;HalfShadowAttenuation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1317;-2395.467,873.7597;Inherit;False;781;HalfLambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1380;-987.9815,1099.935;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;916;-850.6814,1095.337;Inherit;False;blend_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;933;-2683.158,1078.587;Inherit;False;345;_eye;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1931;-2703.43,1157.943;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1932;-2856.462,1156.199;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1933;-2856.462,1255.199;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector4Node;1934;-3070.186,1162.221;Inherit;False;Property;_EyeTilingOffset;Eye Tiling & Offset;1;0;Create;True;0;0;0;False;0;False;0.25,1,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1718;-1223.235,-732.5289;Inherit;False;Property;_GlobalLightFactor;GlobalLightFactor;42;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1719;-954.2338,-731.5289;Inherit;False;GlobalLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1709;-1243.954,-553.9804;Inherit;False;Property;_HighlightLightFactor;HighlightLightFactor;41;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1710;-971.6871,-555.0447;Inherit;False;HighlightLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1708;-1231.482,-646.16;Inherit;False;Property;_EyeLightFactor;EyeLightFactor;40;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1707;-958.871,-647.427;Inherit;False;EyeLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1706;-1450.839,-105.0151;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1900;-1882.339,-248.5938;Inherit;False;Property;_NoShadowinDirectionalLightColor;NoShadow in DirectionalLightColor;10;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1901;-2173.782,-256.5935;Inherit;False;Property;_Keyword2;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1899;-2161.71,-73.21597;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1903;-1125.82,-101.9791;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCGrayscale;1904;-1326.914,-38.21293;Inherit;False;1;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1905;-1385.66,40.83809;Inherit;False;Property;_LightColorGrayScale;LightColor GrayScale;39;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;773;-2592.526,-243.8232;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;825;-2694.596,-120.0157;Inherit;False;Property;_MinDirectLight;MinDirectLight;32;1;[Header];Create;True;1;Light;0;0;False;0;False;0;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1898;-2594.49,-26.7317;Inherit;False;#ifdef POINT$        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz@ \$        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r@$#endif$$#ifdef SPOT$#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))$#else$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord$#endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz)@$#endif$$#ifdef DIRECTIONAL$        return 1@$#endif$$#ifdef POINT_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w@$#endif$$#ifdef DIRECTIONAL_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTexture0, lightCoord).w@$#endif;1;Create;1;True;worldPos;FLOAT3;0,0,0;In;;Inherit;False;Pure Light Attenuation;False;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;208;-977.7683,-104.6063;Inherit;False;LightColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1907;-2657.004,-437.5904;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1908;-2520.305,-406.5365;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1909;-2676.893,-358.3055;Float;False;Constant;_RemapValue3;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1910;-2850.946,-442.5074;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1916;-2320.696,-467.0805;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1911;-2169.426,-458.3641;Inherit;False;HalfShadowAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1917;-2471.672,-495.1975;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1882;-2843.382,-783.6594;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;780;-2822.403,-636.5775;Inherit;False;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;779;-2587.15,-737.3849;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;778;-2611.004,-625.8546;Float;False;Constant;_RemapValue1;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;776;-2433.234,-700.1496;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;797;-2390.703,-772.6799;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;800;-2224.039,-746.7487;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;781;-2048.253,-744.0897;Inherit;False;HalfLambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1927;-2381.084,-189.0639;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1895;-2794.804,-14.45867;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LightAttenuation;1896;-2615.222,55.37831;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1928;-1559.789,-202.9957;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;826;-1852.845,-115.0486;Inherit;False;Property;_MaxDirectLight;MaxDirectLight;33;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1929;-1575.452,167.0168;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1930;-1451.452,207.0168;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;1952;-2039.717,146.5022;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1954;-1750.236,207.8331;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1955;-2204.722,147.8232;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector4Node;1956;-2920.112,224.1909;Inherit;False;Property;_IndirectLightBiasSample1;Indirect Light Bias Sample1;34;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,1,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;1957;-2918.784,400.7992;Inherit;False;Property;_IndirectLightBiasSample2;Indirect Light Bias Sample2;35;0;Create;True;0;0;0;False;0;False;0,1,0,1;0,1,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1958;-2637.158,418.4662;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1959;-2489.547,420.4652;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1960;-2333.602,452.8233;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CustomExpressionNode;1961;-2189.516,451.2244;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1962;-2644.544,223.333;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1963;-2498.237,227.9331;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1964;-2343.588,240.7899;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CustomExpressionNode;1965;-2199.501,244.391;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1966;-1994.569,254.0381;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;303;-1886.361,422.1681;Inherit;False;Property;_MinIndirectLight;MinIndirectLight;37;0;Create;True;0;0;0;False;0;False;0.1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;301;-1868.388,506.7471;Inherit;False;Property;_MaxIndirectLight;MaxIndirectLight;38;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1967;-1987.803,349.9931;Inherit;False;Property;_IndirectBiasSampleRate;Indirect Bias Sample Rate;36;0;Create;True;0;0;0;False;0;False;1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;906;-3648.479,321.3369;Inherit;True;Property;_MainTex;Diffuse Map (_eye);0;2;[Header];[NoScaleOffset];Create;False;1;Diffuse;0;0;False;0;False;None;784ceb657845ba045b7c7cede00feb22;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ToggleSwitchNode;1897;-2407.043,-27.97966;Inherit;False;Property;_ShadowinLightColor;Shadow in LightColor;9;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1969;-2397.379,82.69696;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
WireConnection;600;0;68;0
WireConnection;889;0;908;0
WireConnection;910;0;909;0
WireConnection;614;0;615;0
WireConnection;614;1;613;0
WireConnection;616;0;614;0
WireConnection;616;1;613;0
WireConnection;616;2;617;0
WireConnection;618;0;616;0
WireConnection;610;0;609;0
WireConnection;610;1;611;0
WireConnection;610;2;1697;0
WireConnection;1307;0;1304;0
WireConnection;1307;1;1342;0
WireConnection;1307;2;1343;0
WireConnection;1307;3;1344;0
WireConnection;1304;0;1234;0
WireConnection;1304;1;1285;0
WireConnection;1304;2;1286;0
WireConnection;1378;0;1307;0
WireConnection;1378;1;1377;0
WireConnection;1378;2;1379;0
WireConnection;1377;0;1307;0
WireConnection;1377;1;1376;0
WireConnection;1382;0;1307;0
WireConnection;1382;1;1378;0
WireConnection;1389;0;1382;0
WireConnection;1389;1;1370;0
WireConnection;1342;1;1678;0
WireConnection;1683;0;65;0
WireConnection;1683;1;1681;0
WireConnection;1679;0;1683;0
WireConnection;1679;1;1682;0
WireConnection;1678;0;1679;0
WireConnection;1343;1;1688;0
WireConnection;1686;0;66;0
WireConnection;1686;1;1689;0
WireConnection;1687;0;1686;0
WireConnection;1687;1;1690;0
WireConnection;1688;0;1687;0
WireConnection;1344;1;1693;0
WireConnection;1691;0;1252;0
WireConnection;1691;1;1694;0
WireConnection;1692;0;1691;0
WireConnection;1692;1;1695;0
WireConnection;1693;0;1692;0
WireConnection;1252;0;1253;0
WireConnection;66;0;914;0
WireConnection;888;0;907;0
WireConnection;345;0;906;0
WireConnection;65;0;913;0
WireConnection;1712;0;1382;0
WireConnection;1712;1;1389;0
WireConnection;1712;2;1714;0
WireConnection;604;0;602;0
WireConnection;604;1;605;0
WireConnection;604;2;1721;0
WireConnection;1722;0;602;0
WireConnection;1722;1;605;0
WireConnection;1723;0;1722;0
WireConnection;1723;1;604;0
WireConnection;1723;2;1720;0
WireConnection;606;0;1723;0
WireConnection;606;1;610;0
WireConnection;612;0;606;0
WireConnection;1699;0;618;0
WireConnection;1699;2;1728;0
WireConnection;1499;0;1497;0
WireConnection;1499;1;1506;0
WireConnection;1500;0;1499;0
WireConnection;1501;0;1499;0
WireConnection;1503;0;1500;0
WireConnection;1503;1;1502;0
WireConnection;1504;0;1503;0
WireConnection;1504;1;1501;0
WireConnection;1504;2;1502;0
WireConnection;1505;0;1504;0
WireConnection;1505;1;1506;0
WireConnection;1496;0;1497;0
WireConnection;1496;1;1505;0
WireConnection;1512;0;1496;0
WireConnection;1675;0;1512;0
WireConnection;1418;0;1430;0
WireConnection;1417;0;1416;0
WireConnection;1419;0;1417;0
WireConnection;1419;1;1418;0
WireConnection;1428;0;1419;0
WireConnection;1853;0;1428;0
WireConnection;1450;0;1453;0
WireConnection;1450;1;1452;0
WireConnection;1454;0;1450;0
WireConnection;1856;0;1454;0
WireConnection;1465;0;1463;0
WireConnection;1465;1;1461;0
WireConnection;1466;0;1465;0
WireConnection;1794;0;1795;0
WireConnection;1794;1;1796;0
WireConnection;1793;0;1794;0
WireConnection;1859;0;1793;0
WireConnection;1863;0;1466;0
WireConnection;1457;0;1857;0
WireConnection;1457;2;1455;0
WireConnection;1457;4;1782;0
WireConnection;1458;0;1457;0
WireConnection;1777;0;1857;0
WireConnection;1777;2;1776;0
WireConnection;1777;4;1783;0
WireConnection;1778;0;1777;0
WireConnection;1782;1;1789;1
WireConnection;1771;0;1778;0
WireConnection;1771;4;1769;2
WireConnection;1438;0;1458;0
WireConnection;1438;4;1769;1
WireConnection;1770;0;1854;0
WireConnection;1770;2;1438;0
WireConnection;1770;3;1786;0
WireConnection;1783;1;1789;2
WireConnection;1509;0;1862;0
WireConnection;1509;2;1508;0
WireConnection;1509;4;1791;0
WireConnection;1510;0;1509;0
WireConnection;1792;0;1862;0
WireConnection;1792;2;1798;0
WireConnection;1792;4;1799;0
WireConnection;1797;0;1792;0
WireConnection;1800;0;1797;0
WireConnection;1800;4;1769;4
WireConnection;1791;1;1789;3
WireConnection;1799;1;1789;4
WireConnection;1786;0;1771;0
WireConnection;1801;0;1800;0
WireConnection;1790;0;1866;0
WireConnection;1790;2;1460;0
WireConnection;1790;3;1801;0
WireConnection;1441;0;1770;0
WireConnection;1441;1;1790;0
WireConnection;1460;0;1510;0
WireConnection;1460;4;1769;3
WireConnection;1806;0;1858;0
WireConnection;1806;2;1810;0
WireConnection;1806;4;1811;0
WireConnection;1807;0;1806;0
WireConnection;1808;0;1858;0
WireConnection;1808;2;1812;0
WireConnection;1808;4;1827;0
WireConnection;1809;0;1808;0
WireConnection;1811;1;1825;1
WireConnection;1813;0;1809;0
WireConnection;1813;4;1841;2
WireConnection;1814;0;1807;0
WireConnection;1814;4;1841;1
WireConnection;1826;0;1855;0
WireConnection;1826;2;1814;0
WireConnection;1826;3;1846;0
WireConnection;1827;1;1825;2
WireConnection;1828;0;1864;0
WireConnection;1828;2;1837;0
WireConnection;1828;4;1838;0
WireConnection;1829;0;1828;0
WireConnection;1830;0;1864;0
WireConnection;1830;2;1839;0
WireConnection;1830;4;1840;0
WireConnection;1831;0;1830;0
WireConnection;1832;0;1831;0
WireConnection;1832;4;1841;4
WireConnection;1838;1;1825;3
WireConnection;1840;1;1825;4
WireConnection;1846;0;1813;0
WireConnection;1847;0;1832;0
WireConnection;1848;0;1867;0
WireConnection;1848;2;1850;0
WireConnection;1848;3;1847;0
WireConnection;1849;0;1826;0
WireConnection;1849;1;1848;0
WireConnection;1850;0;1829;0
WireConnection;1850;4;1841;3
WireConnection;1399;0;1398;0
WireConnection;1399;1;1597;0
WireConnection;1597;0;1398;0
WireConnection;1597;1;1441;0
WireConnection;1726;0;1399;0
WireConnection;1726;1;1746;0
WireConnection;1872;0;1871;0
WireConnection;1872;2;1726;0
WireConnection;1872;3;1399;0
WireConnection;1802;0;1731;0
WireConnection;1802;1;1804;0
WireConnection;1804;0;1731;0
WireConnection;1804;1;1849;0
WireConnection;1732;0;1802;0
WireConnection;1732;1;1766;0
WireConnection;1873;0;1871;0
WireConnection;1873;2;1732;0
WireConnection;1873;3;1802;0
WireConnection;1728;0;1730;2
WireConnection;1728;1;1729;0
WireConnection;1728;2;1872;0
WireConnection;1728;3;1873;0
WireConnection;1747;0;1876;0
WireConnection;1735;0;1747;0
WireConnection;1735;1;1748;0
WireConnection;1735;2;1749;0
WireConnection;1745;0;1735;0
WireConnection;1876;0;1875;0
WireConnection;1876;2;1741;0
WireConnection;1876;3;1733;0
WireConnection;1741;0;1739;0
WireConnection;1741;1;1733;3
WireConnection;1741;2;1743;0
WireConnection;1739;0;1733;1
WireConnection;1743;0;1733;2
WireConnection;1740;0;1734;1
WireConnection;1742;0;1740;0
WireConnection;1742;1;1734;3
WireConnection;1742;2;1744;0
WireConnection;1744;0;1734;2
WireConnection;1877;0;1875;0
WireConnection;1877;2;1742;0
WireConnection;1877;3;1734;0
WireConnection;1748;0;1877;0
WireConnection;1736;0;1747;0
WireConnection;1736;1;1748;0
WireConnection;1749;0;1736;0
WireConnection;1752;0;1750;0
WireConnection;1752;1;1763;3
WireConnection;1752;2;1753;0
WireConnection;1750;0;1763;1
WireConnection;1758;0;1878;0
WireConnection;1759;0;1758;0
WireConnection;1759;1;1757;0
WireConnection;1759;2;1762;0
WireConnection;1760;0;1759;0
WireConnection;1878;0;1875;0
WireConnection;1878;2;1752;0
WireConnection;1878;3;1763;0
WireConnection;1753;0;1763;2
WireConnection;1879;0;1875;0
WireConnection;1879;2;1756;0
WireConnection;1879;3;1764;0
WireConnection;1756;0;1754;0
WireConnection;1756;1;1765;2
WireConnection;1756;2;1755;0
WireConnection;1755;0;1765;1
WireConnection;1754;0;1765;0
WireConnection;1765;0;1764;0
WireConnection;1764;0;1751;0
WireConnection;1757;0;1879;0
WireConnection;1761;0;1758;0
WireConnection;1761;1;1757;0
WireConnection;1762;0;1761;0
WireConnection;1422;0;1420;0
WireConnection;1422;1;1924;0
WireConnection;1448;0;1422;0
WireConnection;1410;0;1414;0
WireConnection;1410;1;1415;0
WireConnection;1447;0;1410;0
WireConnection;1429;0;1448;0
WireConnection;1411;0;1447;0
WireConnection;1423;0;1421;0
WireConnection;1924;0;1923;0
WireConnection;1924;2;1421;0
WireConnection;1924;3;1423;0
WireConnection;1479;0;1924;0
WireConnection;1409;0;1407;0
WireConnection;1413;0;1922;0
WireConnection;1408;0;1405;0
WireConnection;1412;0;1920;0
WireConnection;1918;0;1919;0
WireConnection;1920;0;1919;0
WireConnection;1920;2;1405;0
WireConnection;1920;3;1408;0
WireConnection;1922;0;1921;0
WireConnection;1922;2;1407;0
WireConnection;1922;3;1409;0
WireConnection;1345;0;1425;0
WireConnection;1345;1;1325;0
WireConnection;1325;0;1425;0
WireConnection;1325;1;1324;0
WireConnection;1325;2;1318;0
WireConnection;1324;0;1425;0
WireConnection;1324;1;1323;0
WireConnection;1425;0;932;0
WireConnection;1425;1;1424;0
WireConnection;932;0;933;0
WireConnection;932;1;1931;0
WireConnection;1390;0;1345;0
WireConnection;1390;1;1359;0
WireConnection;1711;0;1345;0
WireConnection;1711;1;1390;0
WireConnection;1711;2;1713;0
WireConnection;1309;0;1310;0
WireConnection;1310;0;1316;0
WireConnection;1310;1;1315;0
WireConnection;1312;0;1309;0
WireConnection;1316;0;1314;0
WireConnection;1316;1;1913;0
WireConnection;1322;0;1321;0
WireConnection;1912;0;1317;0
WireConnection;1912;1;1914;0
WireConnection;1913;0;1317;0
WireConnection;1913;1;1912;0
WireConnection;1380;0;1711;0
WireConnection;1380;1;1712;0
WireConnection;916;0;1380;0
WireConnection;1931;0;1932;0
WireConnection;1931;1;1933;0
WireConnection;1932;0;1934;1
WireConnection;1932;1;1934;2
WireConnection;1933;0;1934;3
WireConnection;1933;1;1934;4
WireConnection;1719;0;1718;0
WireConnection;1710;0;1709;0
WireConnection;1707;0;1708;0
WireConnection;1706;0;1928;0
WireConnection;1706;1;1930;0
WireConnection;1900;0;1899;0
WireConnection;1900;1;1901;0
WireConnection;1901;1;1927;0
WireConnection;1901;0;1899;0
WireConnection;1899;0;1927;0
WireConnection;1899;1;1897;0
WireConnection;1903;0;1706;0
WireConnection;1903;1;1904;0
WireConnection;1903;2;1905;0
WireConnection;1904;0;1706;0
WireConnection;1898;0;1895;0
WireConnection;208;0;1903;0
WireConnection;1907;0;1910;0
WireConnection;1908;0;1907;0
WireConnection;1908;1;1909;0
WireConnection;1908;2;1909;0
WireConnection;1916;0;1917;0
WireConnection;1916;2;1908;0
WireConnection;1911;0;1916;0
WireConnection;779;0;1882;0
WireConnection;779;1;780;0
WireConnection;776;0;779;0
WireConnection;776;1;778;0
WireConnection;776;2;778;0
WireConnection;800;0;797;0
WireConnection;800;2;776;0
WireConnection;781;0;800;0
WireConnection;1927;0;773;1
WireConnection;1927;1;825;0
WireConnection;1928;0;1900;0
WireConnection;1928;1;826;0
WireConnection;1929;0;1954;0
WireConnection;1929;1;303;0
WireConnection;1930;0;1929;0
WireConnection;1930;1;301;0
WireConnection;1952;0;1955;0
WireConnection;1954;0;1952;0
WireConnection;1954;1;1966;0
WireConnection;1954;2;1967;0
WireConnection;1955;0;1969;0
WireConnection;1958;0;1957;1
WireConnection;1958;1;1957;2
WireConnection;1958;2;1957;3
WireConnection;1959;0;1958;0
WireConnection;1960;0;1959;0
WireConnection;1960;3;1957;4
WireConnection;1961;0;1960;0
WireConnection;1962;0;1956;1
WireConnection;1962;1;1956;2
WireConnection;1962;2;1956;3
WireConnection;1963;0;1962;0
WireConnection;1964;0;1963;0
WireConnection;1964;3;1956;4
WireConnection;1965;0;1964;0
WireConnection;1966;0;1965;0
WireConnection;1966;1;1961;0
WireConnection;1897;0;1898;0
WireConnection;1897;1;1896;0
ASEEND*/
//CHKSM=4F2188E39F7DD44A3747ED90319CFBC3947CFC38