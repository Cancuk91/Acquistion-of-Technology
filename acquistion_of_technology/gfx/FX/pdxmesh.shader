Includes = {
	"constants.fxh"
	"standardfuncsgfx.fxh"
	"shadow.fxh"
	"tiled_pointlights.fxh"
}

PixelShader =
{
	Samplers =
	{
		DiffuseMap =
		{
			Index = 0
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
		SpecularMap =
		{
			Index = 1
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
		NormalMap =
		{
			Index = 2
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
		FlagMap =
		{
			Index = 3
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "None"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
		EnvironmentMap =
		{
			Index = 4
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Clamp"
			AddressV = "Clamp"
			Type = "Cube"
		}
		LightIndexMap =
		{
			Index = 5
			MagFilter = "Point"
			MinFilter = "Point"
			MipFilter = "Point"
			AddressU = "Clamp"
			AddressV = "Clamp"
		}
		LightDataMap =
		{
			Index = 6
			MagFilter = "Point"
			MinFilter = "Point"
			MipFilter = "Point"
			AddressU = "Clamp"
			AddressV = "Clamp"
		}
		LavaNoise =
		{
			Index = 7
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Clamp"
			AddressV = "Clamp"
			Type = "Cube"
		}
		LavaDiffuse =
		{
			Index = 8
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
		StoneDiffuse =
		{
			Index = 9
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
		CustomTexture = #Planet city lights | Ship coloring texture
		{
			Index = 10
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}	
		CustomTexture2 = #Ship damage texture
		{
			Index = 11
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
		PortraitCharacter =
		{
			Index = 12
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
		PortraitClothes =
		{
			Index = 13
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
		PortraitHair =
		{
			Index = 14
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
	}
}

VertexShader =
{
	Samplers =
	{
		WPOTexture =
		{
			Index = 0
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
	}
}

VertexStruct VS_INPUT_PDXMESHSTANDARD
{
    float3 vPosition		: POSITION;
	float3 vNormal      	: TEXCOORD0;
	float4 vTangent			: TEXCOORD1;
	float2 vUV0				: TEXCOORD2;
@ifdef PDX_MESH_UV1
	float2 vUV1				: TEXCOORD3;
@endif
};

VertexStruct VS_INPUT_PDXMESHSTANDARD_SKINNED
{
    float3 vPosition		: POSITION;
	float3 vNormal      	: TEXCOORD0;
	float4 vTangent			: TEXCOORD1;
	float2 vUV0				: TEXCOORD2;
@ifdef PDX_MESH_UV1
	float2 vUV1				: TEXCOORD3;
@endif
	uint4 vBoneIndex 		: TEXCOORD4;
	float3 vBoneWeight		: TEXCOORD5;
};

VertexStruct VS_OUTPUT_PDXMESHSTANDARD
{
    float4 vPosition	: PDX_POSITION;
	float3 vNormal		: TEXCOORD0;
	float3 vTangent		: TEXCOORD1;
	float3 vBitangent	: TEXCOORD2;
	float2 vUV0			: TEXCOORD3;
	float2 vUV1			: TEXCOORD4;
	float4 vPos			: TEXCOORD5;
	float4 vSphere		: TEXCOORD6;
};

VertexStruct VS_OUTPUT_PDXMESHSHADOW
{
    float4 vPosition	: PDX_POSITION;
	float4 vDepthUV0	: TEXCOORD0;
};

VertexStruct VS_INPUT_DEBUGNORMAL
{
    float3 vPosition		: POSITION;
	float3 vNormal      	: TEXCOORD0;
	float4 vTangent			: TEXCOORD1;
	float2 vUV0				: TEXCOORD2;
	float2 vUV1				: TEXCOORD3;
	float  vOffset      	: TEXCOORD6;
};

VertexStruct VS_INPUT_DEBUGNORMAL_SKINNED
{
    float3 vPosition		: POSITION;
	float3 vNormal      	: TEXCOORD0;
	float4 vTangent			: TEXCOORD1;
	float2 vUV0				: TEXCOORD2;
	float2 vUV1				: TEXCOORD3;
	uint4 vBoneIndex		: TEXCOORD4;
	float3 vBoneWeight		: TEXCOORD5;
	float  vOffset      	: TEXCOORD6;
};

VertexStruct VS_OUTPUT_DEBUGNORMAL
{
    float4 vPosition : PDX_POSITION;
	float2 vUV0		 : TEXCOORD0;
	float  vOffset	 : TEXCOORD1;
};


VertexStruct VS_OUTPUT_PDXMESHNAVIGATIONBUTTON
{
    float4 vPosition	: PDX_POSITION;
	float2 vUV0			: TEXCOORD0;
	float4 vPos			: TEXCOORD1;
};

VertexStruct VS_OUTPUT_PDXMESHSHIELD
{
	float4 vPosition	: PDX_POSITION;
	float2 vUV0			: TEXCOORD0;
	float4 vPos			: TEXCOORD1;
};


ConstantBuffer( ShipConstants, 1, 28 )
{
	float4x4	WorldMatrix;
	float4	Erosion;

	#SEntityCustomDataInstance
	float2 vUVAnimationDir;
	float  vUVAnimationTime;
	float  vBloomFactor;

	#SGameShipConstants
	float4 PrimaryColor;
	float vEmissiveRecolorCrunch;
	float vDamage;

	#SShipLightData
	float2		CamLightIntensityNearFar;
	float3		CamLightDir[3];
	float2		CamLightFadeStartStop;
	float2		RimLightStartNearFar;
	float2		RimLightStopNearFar;
	float2		AmbientIntensityNearFar;
	#MAXED OUT! any more and we will start overlapping with the bone matrices
	
	## TODO for ship coloring
	# Add secondary color - float3
	# make primarycolor to float3 ( frees 1 float )
	# bake time and uv-anim dir ( frees 1 float )
	# use same var for dissolve and damage ( frees 1 float )
	# Check if we can nuke all the near-far values for SShipLightData ( frees 10 floats! )
	
};

ConstantBuffer( VFXConstants, 1, 28 )
{
	float4x4	WorldMatrix;
	float4		Erosion;

	#SEntityCustomDataInstance
	float2 vUVAnimationDir;
	float vUVAnimationTime;
	float vBloomFactor;

	#SGameShipConstants
	float4 PrimaryColor;
	float vEmissiveRecolorCrunch;
	float vDamage;

	float2		WPODirection;
	float		WPOSpeed;
	float		OffsetStrength;
	float		WPOScale;
	float		WPOBigScale;
	float		WPOTime;
}
ConstantBuffer( SecondKind, 1, 28 )
{
	float4x4 	WorldMatrix;
	float4	Erosion;

	float Glossiness_;
	float Specular_;
	float Metalness_;
};

ConstantBuffer( ThirdKind, 1, 28 )
{
	float4x4 	WorldMatrix;
	float4	Erosion;

	#SEntityCustomDataInstance
	float2 vUVAnimationDir;
	float  vUVAnimationTime;
	float  vBloomFactor

	#SPlanetMeshUserData
	float4 AtmosphereColor;
	float AtmosphereIntensity;
	float AtmosphereWidth;
	float Sensor;
	float Colonized;
	float vPlanetDissolveTime;
	float3 vPlanetDissolveColorMult;
};

ConstantBuffer( FourthKind, 1, 28 )
{
	float4x4 	WorldMatrix;
	float4	Erosion;

	#SEntityCustomDataInstance
	float2 vUVAnimationDir;
	float  vUVAnimationTime;
	float  vBloomFactor;

	#SStarMeshUserData
	float3 LavaBrightColor;
	float Time;
	float3 LavaHotStoneColor;
	float StarAtmosphereIntensity;
	float3 LavaColdStoneColor;
	float StarAtmosphereWidth;
	float4 StarAtmosphereColor;

	#more lava settings
};

ConstantBuffer( FifthKind, 1, 28 )
{
	float4x4 	WorldMatrix;
	float4	Erosion;

	float4 BARPrimaryColor;
	float  vProgressBarValue;
};

ConstantBuffer( SixthKind, 1, 28 )
{
	float4x4 	WorldMatrix;
	float4	Erosion;

	float4 ProgressBarPrimaryColor;
	float  vHPBarPadding;
	float  vHealth;
};

ConstantBuffer( SeventhKind, 1, 28 )
{
	float4x4 	WorldMatrix;
	float4	Erosion;

	float	vOverValue;
	float	vDownValue;
	float 	vSelectedValue;
	float 	vIntelValue;
};

ConstantBuffer( EigthKind, 1, 28 )
{
	float4x4 	WorldMatrix;
	float4	Erosion;

	float2 vUVAnimationDir;
	float  vUVAnimationTime;
	float  vBloomFactor;
};

ConstantBuffer( NinthKind, 1, 28 )
{
	float4x4 	WorldMatrix;
	float4	Erosion;

	float3	ObjectPos;
	float	vNumLoops;
	float3	ObjectDir;
	float	vTimePerLoop;
	float3	ObjectScale;
	float	vObjectTime;
};

ConstantBuffer( CommonWithAlphaOverrideMult, 1, 28 )
{
	float4x4 	WorldMatrix;
	float4	Erosion;

	#SEntityCustomDataInstance
	float2 vUVAnimationDir;
	float  vUVAnimationTime;
	float  vBloomFactor;

	# SEntityCustomDataWithAlphaOverrideMultInstance
	float vAlphaOverrideMult;
};

ConstantBuffer( ConstructionConstants, 1, 28 )	#construction
{
	float4x4 	WorldMatrix;
	float4	Erosion;

	float4 ConstructionColor;
	float4 PrimaryColor_Construction;
	float vConstructionProgress;
	float vEmissiveRecolorCrunch_Construction;
}

ConstantBuffer( EleventhKind, 1, 28 )
{
	float4x4 	WorldMatrix;
	float4	Erosion;

	float4 	vAuraColor;
	float	vAuraRadius;
}

ConstantBuffer( PortraitCommon, 0, 0 )
{
	float4x4	ViewProjectionMatrix;
	float3		PortraitScale;
	float 		PortraitMipLevel;
	float		CustomDiffuseTexture;
}

ConstantBuffer( TwelthKind, 1, 28 )
{
	float4x4 	WorldMatrix;
	float4	Erosion;
}

ConstantBuffer( Animation, 2, 42 )
{
	float4x4 matBones[50]; // : Bones :register( c42 ); // 50 * 4 registers 42 - 242
};

Code
[[

static const int PDXMESH_MAX_INFLUENCE = 4;

]]

PixelShader =
{
	Code
		ConstantBuffers = { ShipConstants }
	[[
		void CalculateShipCameraLights( LightingProperties aProperties, float aShadowFactor, inout float3 aDiffuseLightOut, inout float3 aSpecularLightOut )
		{
			for( int i = 0; i < 3; ++i )
			{
				float3 vLightDir = CamLightDir[i].x * vCamRightDir + CamLightDir[i].y * vCamUpDir + CamLightDir[i].z * vCamLookAtDir;
				if( dot( vLightDir, vLightDir ) > 0.f )
				{
					normalize( vLightDir );

					float vCamDistance = length( aProperties._WorldSpacePos - vCamPos );
					float vFadeValue = saturate( ( vCamDistance - CamLightFadeStartStop.x ) / ( CamLightFadeStartStop.y - CamLightFadeStartStop.x ) );
					float vIntensity = lerp( CamLightIntensityNearFar.x, CamLightIntensityNearFar.y, vFadeValue );

					float3 diffLight = vec3(0.0);
					float3 specLight = vec3(0.0);
					#ifndef PDX_LEGACY_BLINN_PHONG
						ImprovedBlinnPhong( CamLightDiffuse[i], -vLightDir, aProperties, diffLight, specLight );
					#else
						diffLight = CalculateLight( aProperties._Normal, vLightDir, CamLightDiffuse[i] );
						specLight = CalculatePBRSpecularPower( aProperties._WorldSpacePos, aProperties._Normal, aProperties._SpecularColor, aProperties._Glossiness, CamLightDiffuse[i], vLightDir);
					#endif
					aDiffuseLightOut += diffLight * aShadowFactor * vIntensity;
					aSpecularLightOut += specLight * aShadowFactor * vIntensity;
				}
			}
		}
	]]

	Code
	[[
		float3 ApplyDissolve( float3 vPrimaryColorIn, float vDissolveIn, float3 vColor, float3 vDiffuse, float2 vUV )
		{
			float vDissolveTex = tex2D( CustomTexture2, vUV ).r;
			float vTime = -vDissolveIn;
			//float vTime = saturate( frac( HdrRange_Time_ClipHeight.y ) * 1.1f );
			const float vTimeOffset = 1.3f;
			float vD = vTimeOffset - vTime * vTimeOffset - vDissolveTex - 0.01f;
			clip( vD );

			const float EDGE_SHARPNESS = 3.0f;
			const float EDGE_POW = 5.0f;
			const float COLOR_INTENSITY = 10.0f;

			float NdotU = dot( UnpackRRxGNormal( tex2D( NormalMap, vUV ) ).rgb, float3( 0.f, 1.f, 0.f ) ) * 0.5f + 0.5f;

			float3 AddColor = vPrimaryColorIn * COLOR_INTENSITY;
			return vColor + AddColor * NdotU * pow( saturate( 1.f - vD*EDGE_SHARPNESS ), EDGE_POW );
		}
	]]
}

VertexShader =
{
	MainCode VertexPdxMeshBillboard
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		VS_OUTPUT_PDXMESHSTANDARD main( const VS_INPUT_PDXMESHSTANDARD v )
		{
		  	VS_OUTPUT_PDXMESHSTANDARD Out;

			float4 vPosition = float4( 0.f, 0.f, 0.f, 1.0f );
			vPosition.xyz =
				( vCamRightDir * v.vPosition.x )
				+ ( vCamUpDir * v.vPosition.y )
				- ( vCamLookAtDir * v.vPosition.z );
			vPosition.y *= -1;
			Out.vSphere = vPosition;
			Out.vNormal = normalize( mul( CastTo3x3( WorldMatrix ), v.vNormal ) );

			#ifdef IS_STAR
				Out.vTangent = normalize( vPosition.xyz ); //Use tangent for position
			#else
				Out.vTangent = normalize( mul( CastTo3x3( WorldMatrix ), v.vTangent.xyz ) );
			#endif
			Out.vBitangent = normalize( cross( Out.vNormal, Out.vTangent ) * v.vTangent.w );

			Out.vPosition = mul( WorldMatrix, vPosition );

			Out.vPos = Out.vPosition;
			Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );

			Out.vUV0 = v.vUV0;
#ifdef PDX_MESH_UV1
			Out.vUV1 = v.vUV1;
#else
			Out.vUV1 = v.vUV0;
#endif

			return Out;
		}
	]]
	MainCode VertexPdxMeshStandard
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		VS_OUTPUT_PDXMESHSTANDARD main( const VS_INPUT_PDXMESHSTANDARD v )
		{
		  	VS_OUTPUT_PDXMESHSTANDARD Out;

			float4 vPosition = float4( v.vPosition.xyz, 1.0f );
			Out.vSphere = float4( v.vPosition, 1.0f );
			Out.vNormal = normalize( mul( CastTo3x3( WorldMatrix ), v.vNormal ) );

			#ifdef IS_STAR
				Out.vTangent = normalize( v.vPosition.xyz ); //Use tangent for position
			#else
				Out.vTangent = normalize( mul( CastTo3x3( WorldMatrix ), v.vTangent.xyz ) );
			#endif
			Out.vBitangent = normalize( cross( Out.vNormal, Out.vTangent ) * v.vTangent.w );

			Out.vPosition = mul( WorldMatrix, vPosition );

			Out.vPos = Out.vPosition;
			Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );

			Out.vUV0 = v.vUV0;
#ifdef PDX_MESH_UV1
			Out.vUV1 = v.vUV1;
#else
			Out.vUV1 = v.vUV0;
#endif

			return Out;
		}

	]]

	MainCode VertexPdxMeshWPO
		ConstantBuffers = { Common, VFXConstants }
	[[
		VS_OUTPUT_PDXMESHSTANDARD main( const VS_INPUT_PDXMESHSTANDARD v )
		{
	VS_OUTPUT_PDXMESHSTANDARD Out;

	float scale = WPOScale;
	float bigScale = WPOBigScale;
	float speed = WPOSpeed;
	float2 direction = WPODirection;

	float2 scrollingSpeed = WPOTime * speed * normalize( direction );

	float2 scrollingUV = v.vUV0 * bigScale + scrollingSpeed;
	float2 scrollingUVSmall = v.vUV0 * scale + ( scrollingSpeed * 0.9f );

	float4 WPOMask = tex2Dlod0( WPOTexture, v.vUV0 );
	float4 vWPOSpeed = tex2Dlod0( WPOTexture, scrollingUV );
	float4 vWPOSpeedSmall = tex2Dlod0( WPOTexture, scrollingUVSmall );
	float offsetStrength = OffsetStrength;

	float3 offset = ( offsetStrength * ( ( ( vWPOSpeed.y - 0.5f ) * 2.0f) * ( ( vWPOSpeedSmall.z - 0.5f ) * 2.0f ) ) * WPOMask.x ) * v.vNormal;

	float4 vPosition = float4( v.vPosition.xyz + offset, 1.0f );

	Out.vSphere = float4( v.vPosition, 1.0f );
	Out.vNormal = normalize( mul( CastTo3x3( WorldMatrix ), v.vNormal ) );

#ifdef IS_STAR
	Out.vTangent = normalize( v.vPosition.xyz ); //Use tangent for position
#else
	Out.vTangent = normalize( mul( CastTo3x3( WorldMatrix ), v.vTangent.xyz ) );
#endif
	Out.vBitangent = normalize( cross( Out.vNormal, Out.vTangent ) * v.vTangent.w );

	Out.vPosition = mul( WorldMatrix, vPosition );

	Out.vPos = Out.vPosition;
	Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );

	Out.vUV0 = v.vUV0;
#ifdef PDX_MESH_UV1
	Out.vUV1 = v.vUV1;
#else
	Out.vUV1 = v.vUV0;
#endif

	return Out;
		}
	]]
	MainCode VertexPdxMeshStandardSkinned
		ConstantBuffers = { Common, ShipConstants, Animation, Shadow }
	[[
		VS_OUTPUT_PDXMESHSTANDARD main( const VS_INPUT_PDXMESHSTANDARD_SKINNED v )
		{
		  	VS_OUTPUT_PDXMESHSTANDARD Out;

			float4 vPosition = float4( v.vPosition.xyz, 1.0 );
			float4 vSkinnedPosition = float4( 0, 0, 0, 0 );
			float3 vSkinnedNormal = float3( 0, 0, 0 );
			float3 vSkinnedTangent = float3( 0, 0, 0 );
			float3 vSkinnedBitangent = float3( 0, 0, 0 );

			float4 vWeight = float4( v.vBoneWeight.xyz, 1.0f - v.vBoneWeight.x - v.vBoneWeight.y - v.vBoneWeight.z );

			for( int i = 0; i < PDXMESH_MAX_INFLUENCE; ++i )
		    {
				int nIndex = int( v.vBoneIndex[i] );
				float4x4 mat = matBones[nIndex];
				vSkinnedPosition += mul( mat, vPosition ) * vWeight[i];

				float3 vNormal = mul( CastTo3x3(mat), v.vNormal );
				float3 vTangent = mul( CastTo3x3(mat), v.vTangent.xyz );
				float3 vBitangent = cross( vNormal, vTangent ) * v.vTangent.w;

				vSkinnedNormal += vNormal * vWeight[i];
				vSkinnedTangent += vTangent * vWeight[i];
				vSkinnedBitangent += vBitangent * vWeight[i];
			}

			Out.vSphere = float4( v.vPosition, 1.0f );

			Out.vPosition = mul( WorldMatrix, vSkinnedPosition );
			Out.vPos = Out.vPosition;
			Out.vPos /= WorldMatrix[3][3];

			Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );
			Out.vNormal = normalize( mul( CastTo3x3(WorldMatrix), normalize( vSkinnedNormal ) ) );
			#ifdef IS_STAR
				Out.vTangent = normalize( v.vPosition.xyz ); //Use tangent for position
			#else
				Out.vTangent = normalize( mul( CastTo3x3(WorldMatrix), normalize( vSkinnedTangent ) ) );
			#endif
			Out.vBitangent = normalize( mul( CastTo3x3(WorldMatrix), normalize( vSkinnedBitangent ) ) );

			Out.vUV0 = v.vUV0;
#ifdef PDX_MESH_UV1
			Out.vUV1 = v.vUV1;
#else
			Out.vUV1 = v.vUV0;
#endif

			return Out;
		}

	]]

	MainCode VertexPdxMeshPortraitStandard
		ConstantBuffers = { PortraitCommon, TwelthKind }
	[[
		VS_OUTPUT_PDXMESHSTANDARD main( const VS_INPUT_PDXMESHSTANDARD v )
		{
		  	VS_OUTPUT_PDXMESHSTANDARD Out;

			float4 vPosition = float4( v.vPosition.xyz, 1.0f );
			Out.vSphere = float4( v.vPosition, 1.0f );
			Out.vNormal = normalize( mul( CastTo3x3( WorldMatrix ), v.vNormal ) );

			#ifdef IS_STAR
				Out.vTangent = normalize( v.vPosition.xyz ); //Use tangent for position
			#else
				Out.vTangent = normalize( mul( CastTo3x3( WorldMatrix ), v.vTangent.xyz ) );
			#endif
			Out.vBitangent = normalize( cross( Out.vNormal, Out.vTangent ) * v.vTangent.w );

			Out.vPosition = mul( WorldMatrix, vPosition );

			Out.vPos = Out.vPosition;
			Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );

			Out.vUV0 = v.vUV0;
#ifdef PDX_MESH_UV1
			Out.vUV1 = v.vUV1;
#else
			Out.vUV1 = v.vUV0;
#endif

			return Out;
		}

	]]

	MainCode VertexPdxMeshPortraitStandardSkinned
		ConstantBuffers = { PortraitCommon, TwelthKind, Animation }
	[[
		VS_OUTPUT_PDXMESHSTANDARD main( const VS_INPUT_PDXMESHSTANDARD_SKINNED v )
		{
		  	VS_OUTPUT_PDXMESHSTANDARD Out;

			float4x4 scaleMat = CreateScaleMatrix( PortraitScale );

			float4 vPosition = float4( v.vPosition.xyz, 1.0f );
			float4 vSkinnedPosition = float4( 0, 0, 0, 0 );
			float3 vSkinnedNormal = float3( 0, 0, 0 );
			float3 vSkinnedTangent = float3( 0, 0, 0 );
			float3 vSkinnedBitangent = float3( 0, 0, 0 );

			float4 vWeight = float4( v.vBoneWeight.xyz, 1.0f - v.vBoneWeight.x - v.vBoneWeight.y - v.vBoneWeight.z );

			for( int i = 0; i < PDXMESH_MAX_INFLUENCE; ++i )
		    {
				int nIndex = int( v.vBoneIndex[i] );
				float4x4 mat = matBones[nIndex];
				vSkinnedPosition += mul( mat, vPosition ) * vWeight[i];

				float3 vNormal = mul( CastTo3x3(mat), v.vNormal );
				float3 vTangent = mul( CastTo3x3(mat), v.vTangent.xyz );
				float3 vBitangent = cross( vNormal, vTangent ) * v.vTangent.w;

				vSkinnedNormal += vNormal * vWeight[i];
				vSkinnedTangent += vTangent * vWeight[i];
				vSkinnedBitangent += vBitangent * vWeight[i];
			}

			Out.vSphere = float4( v.vPosition, 1.0f );

			Out.vPosition = mul( WorldMatrix, mul( vSkinnedPosition, scaleMat ) );
			Out.vPos = Out.vPosition;

			Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );
			Out.vNormal = normalize( mul( CastTo3x3(WorldMatrix), normalize( vSkinnedNormal ) ) );
				Out.vTangent = normalize( mul( CastTo3x3(WorldMatrix), normalize( vSkinnedTangent ) ) );
			Out.vBitangent = normalize( mul( CastTo3x3(WorldMatrix), normalize( vSkinnedBitangent ) ) );

			Out.vUV0 = v.vUV0;
#ifdef PDX_MESH_UV1
			Out.vUV1 = v.vUV1;
#else
			Out.vUV1 = v.vUV0;
#endif

			return Out;
		}

	]]

	MainCode VertexPdxMeshStandardShadow
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		VS_OUTPUT_PDXMESHSHADOW main( const VS_INPUT_PDXMESHSTANDARD v )
		{
		  	VS_OUTPUT_PDXMESHSHADOW Out;
			float4 vPosition = float4( v.vPosition.xyz, 1.0 );
			Out.vPosition = mul( WorldMatrix, vPosition );
			Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );
			Out.vDepthUV0 = float4( Out.vPosition.zw, v.vUV0 );
			return Out;
		}

	]]

	MainCode VertexPdxMeshStandardSkinnedShadow
		ConstantBuffers = { Common, ShipConstants, Animation, Shadow }
	[[
		VS_OUTPUT_PDXMESHSHADOW main( const VS_INPUT_PDXMESHSTANDARD_SKINNED v )
		{
		  	VS_OUTPUT_PDXMESHSHADOW Out;

			float4 vPosition = float4( v.vPosition.xyz, 1.0 );
			float4 vSkinnedPosition = float4( 0, 0, 0, 0 );

			float4 vWeight = float4( v.vBoneWeight.xyz, 1.0f - v.vBoneWeight.x - v.vBoneWeight.y - v.vBoneWeight.z );

			for( int i = 0; i < PDXMESH_MAX_INFLUENCE; ++i )
		    {
				int nIndex = int( v.vBoneIndex[i] );
				float4x4 mat = matBones[nIndex];
				vSkinnedPosition += mul( mat, vPosition ) * vWeight[i];
			}

			Out.vPosition = mul( WorldMatrix, vSkinnedPosition );
			Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );
			Out.vDepthUV0 = float4( Out.vPosition.zw, v.vUV0 );
			return Out;
		}

	]]

	MainCode VertexDebugNormal
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		VS_OUTPUT_DEBUGNORMAL main( const VS_INPUT_DEBUGNORMAL v )
		{
		  	VS_OUTPUT_DEBUGNORMAL Out;

			Out.vPosition = mul( WorldMatrix, float4( v.vPosition.xyz, 1.0 ) );
			Out.vPosition.xyz += mul( CastTo3x3(WorldMatrix), v.vNormal ) * v.vOffset * 0.3f;
			Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );

			Out.vUV0 = v.vUV0;
			Out.vOffset = v.vOffset;

			return Out;
		}

	]]

	MainCode VertexDebugNormalSkinned
		ConstantBuffers = { Common, ShipConstants, Animation, Shadow }
	[[
		VS_OUTPUT_DEBUGNORMAL main( const VS_INPUT_DEBUGNORMAL_SKINNED v )
		{
		  	VS_OUTPUT_DEBUGNORMAL Out;

			float4 vPosition = float4( v.vPosition.xyz, 1.0 );
			float4 vSkinnedPosition = float4( 0, 0, 0, 0 );
			float3 vSkinnedNormal = float3( 0, 0, 0 );

			float4 vWeight = float4( v.vBoneWeight.xyz, 1.0f - v.vBoneWeight.x - v.vBoneWeight.y - v.vBoneWeight.z );

			for( int i = 0; i < PDXMESH_MAX_INFLUENCE; ++i )
		    {
				int nIndex = int( v.vBoneIndex[i] );
				float4x4 mat = matBones[nIndex];
				vSkinnedPosition += mul( mat, vPosition ) * vWeight[i];
				vSkinnedNormal += mul( CastTo3x3(mat), v.vNormal ) * vWeight[i];
			}

			Out.vPosition = mul( WorldMatrix, vSkinnedPosition );
			vSkinnedNormal = normalize( mul( CastTo3x3(WorldMatrix), vSkinnedNormal ) );
			Out.vPosition.xyz += vSkinnedNormal * v.vOffset * 0.3f * WorldMatrix[ 3 ][ 3 ];
			Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );

			Out.vUV0 = v.vUV0;
			Out.vOffset = v.vOffset;
			return Out;
		}

	]]

	MainCode VertexPdxMeshNavigationButton
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		VS_OUTPUT_PDXMESHNAVIGATIONBUTTON main( const VS_INPUT_PDXMESHSTANDARD v )
		{
		  	VS_OUTPUT_PDXMESHNAVIGATIONBUTTON Out;

			float4 vPosition = float4( v.vPosition.xyz, 1.0f );

			Out.vPosition = mul( WorldMatrix, vPosition );
			Out.vPos = Out.vPosition;
			Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );

			Out.vUV0 = v.vUV0;

			return Out;
		}

	]]

	MainCode VertexPdxMeshShieldHitEffect
		ConstantBuffers = { Common, NinthKind, Shadow }
	[[
		VS_OUTPUT_PDXMESHSHIELD main( const VS_INPUT_PDXMESHSTANDARD v )
		{
		  	VS_OUTPUT_PDXMESHSHIELD Out;

			float4 vPosition = float4( v.vPosition.xyz, 1.0f );

			Out.vPosition = mul( WorldMatrix, vPosition );

			float3 Up = float3( 0.f, 1.f, 0.f );
			float3 Side = cross( Up, ObjectDir );

			float3 vDelta = Out.vPosition.xyz - ObjectPos;
			//transform vDelta from ellipsoid-space to sphere-space
			vDelta = ( ObjectDir * ( dot( vDelta, ObjectDir ) / ObjectScale.z ) )
					+( Side		 * ( dot( vDelta, Side ) / ObjectScale.x ) )
					+( Up		 * ( dot( vDelta, Up ) / ObjectScale.y ) );
			vDelta = normalize( vDelta );

			//Out.vPosition.xyz = ObjectPos + vDelta * 10.f;
			Out.vPosition.xyz = ObjectPos;
			Out.vPosition.xyz += ObjectDir * ( dot( vDelta, ObjectDir ) * ObjectScale.z );
			Out.vPosition.xyz += Up * ( dot( vDelta, Up ) * ObjectScale.y );
			Out.vPosition.xyz += Side * ( dot( vDelta, Side ) * ObjectScale.x );

			Out.vPos = Out.vPosition;
			Out.vPosition = mul( ViewProjectionMatrix, Out.vPosition );

			Out.vUV0 = v.vUV0;

			return Out;
		}
	]]
}

PixelShader =
{
	MainCode PixelPdxMeshStandard
		ConstantBuffers = { Common, ThirdKind, Shadow, TiledPointLight }
	[[
		float3 ApplyPlanetDissolve( float3 vPrimaryColor, float3 vColor, float3 vNormal, float2 vUV, float vDissolve )
		{
			// Arbitrary value for signaling that the effect shouldn't be applied
			if ( vDissolve < -9.0f )
			{
				return vColor;
			}

			const float TIME_OFFSET = 0.95f;

			float vTex = texCUBE( LavaNoise, vNormal ).r;
			float vDot = 0.25f + ( 0.25f * dot( vNormal, float3( 0.0f, 1.0f, 0.0f ) ) );
			float vNoise = ( vTex * 0.25f ) + vDot;
			float vDissolveAbs = abs( vDissolve );

			// Move the "clipping edge" down the planet
			float vD = TIME_OFFSET - vNoise - ( saturate( vDissolveAbs ) * TIME_OFFSET );
			if ( vDissolve < 0 )
			{
				clip( -vD );
			}
			else
			{
				clip( vD );
			}

			const float EDGE_SHARPNESS = 2.0f;
			const float EDGE_POW = 10.0f;
			const float COLOR_INTENSITY = 20.0f;
			const float FADE_OUT_POINT = 0.9f;

			float NdotU = ( dot( UnpackRRxGNormal( tex2D( NormalMap, vUV ) ).rgb, float3( 0.f, 1.f, 0.f ) ) * 0.5f ) + 0.5f;

			float3 vAddColor = vPrimaryColor * vPlanetDissolveColorMult * COLOR_INTENSITY;
			vAddColor *= NdotU * pow( saturate( 1.0f - ( abs( vD ) * EDGE_SHARPNESS ) ), EDGE_POW );

			// Fade out the edge glow effect at the end
			if ( vDissolveAbs > FADE_OUT_POINT )
			{
				vAddColor -= vAddColor * ( ( vDissolveAbs - FADE_OUT_POINT ) / ( 1.0f - FADE_OUT_POINT ) );
			}

			return vColor + vAddColor;
		}

		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			const float MAX_BUILDINGS_FOR_NIGHT_LIGHTS = 14;

			float4 vDiffuse = tex2D( DiffuseMap, In.vUV0 + vUVAnimationDir * vUVAnimationTime );
		#ifdef GUI_ICON
			#ifndef IS_CLOUDS
				float Grey = dot( vDiffuse.rgb, float3( 0.212671f, 0.715160f, 0.072169f ) + vec3( 0.1f ) );
				vDiffuse.rgb = lerp( vDiffuse.rgb, vec3( Grey ), 0.4f );
			#endif
		#endif
		#ifdef TILING_AO
			vDiffuse.rgb *= tex2D( DiffuseMap, In.vUV1 ).a;
		#endif

		#ifdef ALPHA_TEST
			clip(vDiffuse.a - 1.0);
		#endif

			float3 vPos = In.vPos.xyz / In.vPos.w;

			float3 vInNormal = normalize( In.vNormal );
			float4 vProperties = tex2D( SpecularMap, In.vUV0 );

		#ifdef IS_PLANET
			PointLight systemPointlight = GetPointLight(SystemLightPosRadius, SystemLightColorFalloff);
		#endif

			LightingProperties lightingProperties;
			lightingProperties._WorldSpacePos = vPos;
			lightingProperties._ToCameraDir = normalize(vCamPos - vPos);

		#ifdef IS_CLOUDS
			// Clip clouds at planet limit
			clip( saturate( dot( vInNormal, lightingProperties._ToCameraDir ) ) - 0.27f );
		#endif

		#ifdef IS_CLOUDS
				// Bend normals for clouds to reduce edge
				float3 vSystemLightDir = normalize( systemPointlight._Position - vPos );
				vInNormal = normalize( lerp( vInNormal, vSystemLightDir, 0.01f + 0.10f * vDiffuse.a ) );
		#endif

		#ifndef PDX_LEGACY_BLINN_PHONG
			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );

			#ifdef EMISSIVE
				float vEmissive = vNormalMap.b;
			#endif
			float3 vNormalSample =  UnpackRRxGNormal(vNormalMap);

			lightingProperties._Glossiness = vProperties.a;
		#else
			#ifdef EMISSIVE
				float vEmissive = vProperties.b;
			#endif
			float3 vNormalSample = UnpackNormal( NormalMap, In.vUV0 );

			lightingProperties._SpecularColor = vec3(vProperties.a);
			#ifdef GLOSSINESS
				lightingProperties._Glossiness = vProperties.g * 2048.0 * vProperties.g + 0.00001; // Small epsilon to avoid 0^0
			#else
				lightingProperties._Glossiness = SPECULAR_WIDTH;
			#endif
		#endif

		#ifdef HACK
			#ifdef EMISSIVE
				vEmissive = vProperties.b;
			#endif
			vNormalSample = UnpackNormal( NormalMap, In.vUV0 );

			lightingProperties._Glossiness = Glossiness_;
			vProperties.g = Specular_;
			vProperties.b = Metalness_;
		#endif
			lightingProperties._NonLinearGlossiness = GetNonLinearGlossiness(lightingProperties._Glossiness);

		float vCubemapIntensity = CubemapIntensity;

		#ifdef EMISSIVE
			#ifndef RECOLOR_EMISSIVE
				if( AtmosphereColor.a > 0.0f )
				{
					vDiffuse.rgb = lerp( vDiffuse.rgb, vec3( max( vDiffuse.r, max( vDiffuse.g, vDiffuse.b ) ) ) * AtmosphereColor.rgb, saturate( vEmissive * 1.0f ) );
				}
			#else
				vDiffuse.rgb = lerp( vDiffuse.rgb, vec3( max( vDiffuse.r, max( vDiffuse.g, vDiffuse.b ) ) ) * AtmosphereColor.rgb, saturate( vEmissive * 1.0f ) );
			#endif
		#endif

			float3 vColor = vDiffuse.rgb;
			#ifndef ADD_COLOR
				if( AtmosphereColor.a > 0.0f )
				{
			#endif
					 // Gamma - Linear ping pong
					 // All content is already created for gamma space math, so we do this in gamma space
					vColor = ToGamma(vColor);
					vColor = ToLinear(lerp( vColor, vColor * ( vProperties.r * AtmosphereColor.rgb ), vProperties.r ));
			#ifndef ADD_COLOR
				}
			#endif

			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), vInNormal );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float fShadowTerm = 1.0f;

			lightingProperties._Normal = vNormal;
		#ifndef PDX_LEGACY_BLINN_PHONG
			float SpecRemapped = vProperties.g * vProperties.g * 0.4;
			float MetalnessRemapped = 1.0 - (1.0 - vProperties.b) * (1.0 - vProperties.b);
			lightingProperties._Diffuse = MetalnessToDiffuse(MetalnessRemapped, vColor);
			lightingProperties._SpecularColor = MetalnessToSpec(MetalnessRemapped, vColor, SpecRemapped);
		#else
			lightingProperties._Diffuse = vColor;
		#endif

			float3 diffuseLight = vec3(0.0);
			float3 specularLight = vec3(0.0);
		#ifndef IGNORE_POINT_LIGHTS
			//CalculateSunLight(lightingProperties, fShadowTerm, diffuseLight, specularLight);
			CalculateSystemPointLight(lightingProperties, 1.0f, diffuseLight, specularLight);
			CalculatePointLights(lightingProperties, LightDataMap, LightIndexMap, diffuseLight, specularLight);
		#endif

		#ifdef EMISSIVE
			#ifndef IS_RING
			#ifndef NO_PLANET_EMISSIVE
				#ifdef IS_PLANET
					// Emissive only on dark side of planets
					float3 vSystemLightDir = normalize( systemPointlight._Position - lightingProperties._WorldSpacePos );
					float NdotL = saturate( saturate( dot( vInNormal, -vSystemLightDir ) - 0.05f ) * 5.0f );

					float vDarksideEmissive = 1.0f - saturate( length( diffuseLight + specularLight ) );
					vEmissive *= vDarksideEmissive * vProperties.r * NdotL;

					vCubemapIntensity *= ( 1.0f - vDarksideEmissive ) / 2.0f;
				#endif
			#endif
			#endif
		#endif

		#ifndef PDX_LEGACY_BLINN_PHONG
			float3 vEyeDir = normalize( vPos - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, vNormal );
			float MipmapIndex = GetEnvmapMipLevel(lightingProperties._Glossiness);

			#if 0
				float scale = 1.0 - exp2(MipmapIndex) / 256.0; // CubemapSize is the size of the base mipmap
				float M = max(max(abs(reflection.x), abs(reflection.y)), abs(reflection.z));
				if (abs(reflection.x) != M) reflection.x *= scale;
				if (abs(reflection.y) != M) reflection.y *= scale;
				if (abs(reflection.z) != M) reflection.z *= scale;
			#endif

			float3 reflectiveColor = texCUBElod( EnvironmentMap, float4(reflection, MipmapIndex) ).rgb * vCubemapIntensity;
			specularLight += reflectiveColor * FresnelGlossy(lightingProperties._SpecularColor, -vEyeDir, lightingProperties._Normal, lightingProperties._Glossiness);
		#endif
			vColor = ComposeLight(lightingProperties, 1.0f, diffuseLight, specularLight);

		#ifdef EMISSIVE
			vColor = lerp( vColor, vDiffuse.rgb, vEmissive );

			#ifndef IS_RING
			#ifndef NO_PLANET_EMISSIVE
				#ifdef IS_PLANET

					float4 vCityColor = tex2D( CustomTexture, In.vUV0 );
					//float vLights = saturate( mod( HdrRange_Time_ClipHeight.y*0.5f, 1.2f ) - 0.1f );
					//float vLights = saturate( 3.0f / MAX_BUILDINGS_FOR_NIGHT_LIGHTS );//Colonized / MAX_BUILDINGS_FOR_NIGHT_LIGHTS;
					float vLights = ( Colonized / MAX_BUILDINGS_FOR_NIGHT_LIGHTS );

					float vBrightness = vDarksideEmissive * vProperties.r * dot( vCityColor.rgb, vec3( 0.5 ) );
					const float NUM_STEPS = 4;
					vLights = floor( ( 0.99f / NUM_STEPS + vLights ) * NUM_STEPS ) / (NUM_STEPS-1);
					//return float4( 1.f-vLights, vLights, 0.f, 1.f );
					vBrightness *= saturate( ( vLights - (1.f-vCityColor.a) ) * NUM_STEPS );
					//return vBrightness + vCityColor.a * 0.25f;
					vColor = saturate( vColor + vCityColor.rgb * vBrightness );
					vEmissive = max( vEmissive, vBrightness );
				#endif
			#endif
			#endif
		#endif

		#ifndef IS_RING
			#ifdef IS_PLANET
				#ifdef GUI_ICON
					const float vWidth = 2.1f;
					const float vIntensity = 0.85f;
					float vAtmosphere = saturate( dot( vInNormal, -lightingProperties._ToCameraDir ) + AtmosphereWidth * vWidth ) * vIntensity;
				#else
					float vToCamera = saturate( dot( vInNormal, -lightingProperties._ToCameraDir ) + AtmosphereWidth);
					float vToSun = dot( vInNormal, normalize( SystemLightPosRadius.xyz - vPos ) ) * 0.5f + 0.5f;
					float vAtmosphere = lerp( vToCamera, vToCamera * vToSun, 0.5f );
				#endif
				vColor = lerp( vColor, AtmosphereColor.rgb, vAtmosphere * vAtmosphere * AtmosphereColor.a * AtmosphereIntensity );
			#endif
		#endif

			DebugReturn(vColor, lightingProperties, fShadowTerm);

			float alpha = vDiffuse.a;
		#ifdef EMISSIVE
			#ifndef GUI_ICON
			#ifndef NO_ALPHA_MULTIPLIED_EMISSIVE
				alpha *= vEmissive;
			#endif
			#endif
		#endif
		#ifdef IS_PLANET
			#ifdef GUI_ICON
				vColor = vColor * Sensor + float3( 0.3f, 0.3f, 0.3f ) * ( 1.0f - Sensor );
				#ifdef IS_RING
					alpha *= 4.5f;
				#endif
			#else
				vColor = vColor * Sensor + ToLinear( float3( 0.3f, 0.3f, 0.3f ) * ( 1.0f - Sensor ) );
			#endif
		#endif

		#ifdef RIM_LIGHT
			float vRim = smoothstep( RIM_START, RIM_END, 1.0f - dot( vInNormal, lightingProperties._ToCameraDir ) );
			vColor.rgb = lerp( vColor.rgb, RIM_COLOR.rgb, vRim );
		#endif
			vColor.rgb *= vBloomFactor;

		#ifdef DISSOLVE
			vColor.rgb = ApplyDissolve( AtmosphereColor.rgb, 0.0f, vColor.rgb, AtmosphereColor.rgb, In.vUV0 );
		#endif

		#ifndef IS_RING
		#ifdef IS_PLANET
			vColor.rgb = ApplyPlanetDissolve( AtmosphereColor.rgb, vColor.rgb, In.vNormal, In.vUV0, vPlanetDissolveTime );
		#endif
		#endif

			return float4(vColor, alpha);
		}

	]]

	MainCode PixelPdxMeshShip
		ConstantBuffers = { Common, ShipConstants, Shadow, TiledPointLight }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			const float  DMG_START		= 0.5f;
			const float  DMG_END		= 1.0f;
			const float  DMG_TILING		= 3.5f;
			const float  DMG_EDGE		= 0.0f;
			const float3 DMG_EDGE_COLOR	= float3( 10.0f, 6.6f, 0.1f );

			
			float4 vDiffuse = tex2D( DiffuseMap, In.vUV0 + vUVAnimationDir * vUVAnimationTime );

			#ifdef COLORED_PATTERNS
				float vColorMask = tex2D( CustomTexture, In.vUV1 + vUVAnimationDir * vUVAnimationTime ).r;
				vDiffuse.rgb = lerp( vDiffuse.rgb, ( vDiffuse.rgb ) * normalize( PrimaryColor.rgb ) * 15, vColorMask );
			#endif
			
			float3 vPos = In.vPos.xyz / In.vPos.w;

			float3 vInNormal = normalize( In.vNormal );
			float4 vProperties = tex2D( SpecularMap, In.vUV0 );

			//Fade in damage texture
			float4 vDamageTex = tex2D( CustomTexture2, In.vUV0 * DMG_TILING );
			//float vDmgTemp = 1.0f;
			float vDmgTemp = vDamage;
			//float vDmgTemp = saturate( mod( HdrRange_Time_ClipHeight.y * 0.25f, 1.25f ) );
			vDmgTemp = 1.0f - saturate( ( vDmgTemp - DMG_START ) / ( DMG_END - DMG_START ) );
			float vDamageValue = ( vDamageTex.a - vDmgTemp ) * 5.0f;
			if( vDamageTex.a <= 0.001f )
			{
				vDamageValue = 0.f;
			}
			float vDamageEdge = DMG_EDGE * saturate( 1.0f - abs( ( vDamageValue - 0.5 ) * 2 ) );
			vDamageValue = saturate( vDamageValue );
			vDiffuse.rgb = lerp( vDiffuse.rgb, vDamageTex.rgb, vDamageValue );
			vProperties = lerp( vProperties, vec4( 0.f ), vDamageValue );

			vDiffuse.rgb *= lerp( vec3( 1.f ), DMG_EDGE_COLOR, saturate( vDamageEdge ) );


			LightingProperties lightingProperties;
			lightingProperties._WorldSpacePos = vPos;
			lightingProperties._ToCameraDir = normalize(vCamPos - vPos);

			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );

			float vEmissive = vNormalMap.b;
			float3 vNormalSample =  UnpackRRxGNormal(vNormalMap);

			#ifndef USE_EMPIRE_COLOR_MASK_FOR_EMISSIVE //If not defined, just color all of the emissive the empire color
				if( PrimaryColor.a > 0.0f )
				{
					vDiffuse.rgb = lerp( vDiffuse.rgb, vec3( max( vDiffuse.r, max( vDiffuse.g, vDiffuse.b ) ) ) * PrimaryColor.rgb, saturate( (vEmissive * vEmissiveRecolorCrunch ) ) );
				}
			#else
				if( PrimaryColor.a > 0.0f ) //It is defined, therefore we take the empire color map into account and only color areas that have been defined there as well.
				{
					float Floored = floor( vProperties.r + 0.95f );
					float3 EmpireColorEmissive = float3(Floored, Floored, Floored);
					vDiffuse.rgb = lerp( vDiffuse.rgb, vec3( max( vDiffuse.r, max( vDiffuse.g, vDiffuse.b ) ) ) * PrimaryColor.rgb, saturate( (vEmissive * vEmissiveRecolorCrunch * EmpireColorEmissive ) ) );
				}
			#endif		
			
			vEmissive *= 1.f - vDamageValue;
			vEmissive += vDamageEdge;
						
			float3 vColor = vDiffuse.rgb;

			lightingProperties._Glossiness = vProperties.a;
			lightingProperties._NonLinearGlossiness = GetNonLinearGlossiness(lightingProperties._Glossiness);

			float vCubemapIntensity = CubemapIntensity;

			 // Gamma - Linear ping pong
			 // All content is already created for gamma space math, so we do this in gamma space
			vColor = ToGamma(vColor);
			vColor = ToLinear(lerp( vColor, vColor * ( vProperties.r * PrimaryColor.rgb ), vProperties.r ));

			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), vInNormal );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float fShadowTerm = 1.0f;
			lightingProperties._Normal = vNormal;
			float SpecRemapped = vProperties.g * vProperties.g * 0.4;
			float vMetalness = vProperties.b;
			
			float MetalnessRemapped = 1.0 - (1.0 - vMetalness) * (1.0 - vMetalness);

			lightingProperties._Diffuse = MetalnessToDiffuse(MetalnessRemapped, vColor);
			lightingProperties._SpecularColor = MetalnessToSpec(MetalnessRemapped, vColor, SpecRemapped);

			float3 diffuseLight = vec3(0.0);
			float3 specularLight = vec3(0.0);
			//CalculateSunLight(lightingProperties, fShadowTerm, diffuseLight, specularLight);
			CalculateSystemPointLight(lightingProperties, 1.0f, diffuseLight, specularLight);
			CalculateShipCameraLights(lightingProperties, 1.0f, diffuseLight, specularLight);
			CalculatePointLights(lightingProperties, LightDataMap, LightIndexMap, diffuseLight, specularLight);

			float3 vEyeDir = normalize( vPos - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, vNormal );
			float MipmapIndex = GetEnvmapMipLevel(lightingProperties._Glossiness);
			float3 reflectiveColor = texCUBElod( EnvironmentMap, float4(reflection, MipmapIndex) ).rgb * vCubemapIntensity;
			specularLight += reflectiveColor * FresnelGlossy(lightingProperties._SpecularColor, -vEyeDir, lightingProperties._Normal, lightingProperties._Glossiness);

			float vCamDistance = length( vPos - vCamPos );
			float vCamDistFadeValue = saturate( ( vCamDistance - CamLightFadeStartStop.x ) / ( CamLightFadeStartStop.y - CamLightFadeStartStop.x ) );
			float vAmbientIntensity = lerp( AmbientIntensityNearFar.x, AmbientIntensityNearFar.y, vCamDistFadeValue );
			
			vColor = ComposeLight(lightingProperties, vAmbientIntensity, diffuseLight, specularLight);
			vColor = lerp( vColor, vDiffuse.rgb, vEmissive );

			float alpha = vDiffuse.a;
			#ifndef GUI_ICON
			#ifndef NO_ALPHA_MULTIPLIED_EMISSIVE
				alpha *= vEmissive;
				alpha *= vBloomFactor;
			#endif
			#endif

		#ifdef RIM_LIGHT
			float vRimStart = lerp( RimLightStartNearFar.x, RimLightStartNearFar.y, vCamDistFadeValue );
			float vRimStop = lerp( RimLightStopNearFar.x, RimLightStopNearFar.y, vCamDistFadeValue );

			float vRim = smoothstep( vRimStart, vRimStop, 1.0f - dot( vNormal, lightingProperties._ToCameraDir ) );

			vColor.rgb = lerp( vColor.rgb, RimLightDiffuse.rgb, saturate( vRim ) );
		#endif

			DebugReturn(vColor, lightingProperties, fShadowTerm);

			vColor = ApplyDissolve( PrimaryColor.rgb, vDamage, vColor.rgb, vDiffuse.rgb, In.vUV0 );

			return float4(vColor, alpha  );
		}

	]]

	MainCode PixelPdxMeshBlackHole
		ConstantBuffers = { Common, FourthKind, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float3 p = vCamRightDir * dot( In.vNormal, vCamRightDir );
			float3 vInvertedNormal = In.vNormal + ( p - In.vNormal ) * 2.f;
			float3 vEyeDir = normalize( In.vPos.xyz - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, vInvertedNormal );

			float3 Color = texCUBElod( EnvironmentMap, float4(reflection, 0) ).rgb;

			float vDot = dot( -vEyeDir, In.vNormal );
			Color = saturate( Color * pow( abs(1.05f - vDot), 7.f ) );
			Color += StarAtmosphereColor.rgb * smoothstep( 0.25f, 0.01f, vDot ) * 0.25f * StarAtmosphereColor.a;

			return float4( Color * vBloomFactor, 1.0f );
		}
	]]

	MainCode PixelPdxMeshDimensionalPortal
		ConstantBuffers = { Common, ShipConstants, Shadow, TiledPointLight }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			// Normal
			float3 vInNormal = normalize( In.vNormal );
			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );
			float3 vNormalSample = UnpackRRxGNormal(vNormalMap);
			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), vInNormal );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float3 p = vCamRightDir * dot( vNormal, vCamRightDir );
			float3 vInvertedNormal = vNormal + ( p - vNormal ) * 2.f;
			float3 vEyeDir = normalize( In.vPos.xyz - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, vInvertedNormal );

			float3 Color = dot( float3( 1.f, 1.f, 1.f ), texCUBElod( EnvironmentMap, float4(reflection, 0) ).rgb ) * PrimaryColor.rgb;

			float vDot = dot( -vEyeDir, In.vNormal );
			Color = saturate( Color * pow( 1.05f - vDot, 2.f ) );
			Color += PrimaryColor.rgb * smoothstep( 0.25f, 0.01f, vDot ) * 0.25f * PrimaryColor.a;

			float vPole = pow( 1.f - abs( ( In.vUV0.y - 0.5f ) * 2.f ), 2.0f );
			Color.rgb *= vPole;

			Color = ApplyDissolve( PrimaryColor.rgb, vDamage, Color, PrimaryColor.rgb, In.vUV0 );
			float vAlpha = 1.f;//saturate( In.vUV0.y * 2.f );
			return float4( saturate( Color ) * vBloomFactor, vAlpha );
		}
	]]

	MainCode PixelPdxMeshExtraDimensionalShip
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float3 RimColor = HSVtoRGB( float3( 0.4f, 0.7f, 1.0f ) );
			const float RimAlpha = 0.09f;
			const float vRimStart = 0.5f;
			const float vRimStop = 0.25f;

			// Normal
			float3 vInNormal = normalize( In.vNormal );
			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );
			float3 vNormalSample = UnpackRRxGNormal(vNormalMap);

			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), vInNormal );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float vDot = dot( vNormal, -vCamLookAtDir );

			float vRim = smoothstep( vRimStart, vRimStop, abs( vDot ) );
			float4 vColor = vRim * float4( RimColor.rgb, RimAlpha );
			if( vDot > 0.f )
			{
				float vTime = ( vUVAnimationTime + HdrRange_Time_ClipHeight.y ) * 0.15f;
				vColor += tex2D( DiffuseMap, In.vUV0 + vUVAnimationDir * vTime );
				vColor += tex2D( DiffuseMap, ( In.vUV0 + float2( 0.20f, -0.13f ) * vTime * 0.27f ) );
			}

			float3 vEyeDir = normalize( In.vPos.xyz - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, In.vNormal );
			float pulse = ( 0.9f + 0.1f * sin( 3.141f * length( texCUBElod( EnvironmentMap, float4(reflection, 0) ).rgb ) + HdrRange_Time_ClipHeight.y * 1.f - In.vSphere.z * In.vSphere.y * 0.125f ) );
			vColor += pow( pulse, 40.0f ) * 0.1f;

			vColor.rgb = ApplyDissolve( PrimaryColor.rgb, vDamage, vColor.rgb, RimColor, In.vUV0 );

			vColor.rgb *= vBloomFactor;
			return vColor;
		}
	]]

	MainCode PixelAotPlanetShieldDM
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float3 RimColor = HSVtoRGB( float3( 2.3f, 1.0f, 1.0f ) );
			const float RimAlpha = 0.15f;
			const float vRimStart = 0.75f;
			const float vRimStop = 0.5f;

			// Normal
			float3 vInNormal = normalize( In.vNormal );
			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );
			float3 vNormalSample = UnpackRRxGNormal(vNormalMap);

			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), vInNormal );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float vDot = dot( vNormal, -vCamLookAtDir );

			float vRim = smoothstep( vRimStart, vRimStop, abs( vDot ) );
			float4 vColor = vRim * float4( RimColor.rgb, RimAlpha );
			if( vDot > 0.f )
			{
				float vTime = ( vUVAnimationTime + HdrRange_Time_ClipHeight.y ) * 0.15f;
				vColor += tex2D( DiffuseMap, In.vUV0 + vUVAnimationDir * vTime );
				vColor += tex2D( DiffuseMap, ( In.vUV0 + float2( 0.20f, -0.13f ) * vTime * 0.27f ) );
			}

			float3 vEyeDir = normalize( In.vPos.xyz - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, In.vNormal );
			float pulse = ( 0.9f + 0.1f * sin( 3.141f * length( texCUBElod( EnvironmentMap, float4(reflection, 0) ).rgb ) + HdrRange_Time_ClipHeight.y * 1.f - In.vSphere.z * In.vSphere.y * 0.125f ) );
			vColor += pow( pulse, 40.0f ) * 0.1f;

			vColor.rgb = ApplyDissolve( PrimaryColor.rgb, vDamage, vColor.rgb, RimColor, In.vUV0 );

			vColor.rgb *= vBloomFactor;
			return vColor;
		}
	]]

	MainCode PixelAotPlanetShieldAE
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float3 RimColor = HSVtoRGB( float3( 3.8f, 1.0f, 1.0f ) );
			const float RimAlpha = 0.35f;
			const float vRimStart = 1.0f;
			const float vRimStop = 0.5f;

			// Normal
			float3 vInNormal = normalize( In.vNormal );
			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );
			float3 vNormalSample = UnpackRRxGNormal(vNormalMap);

			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), vInNormal );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float vDot = dot( vNormal, -vCamLookAtDir );

			float vRim = smoothstep( vRimStart, vRimStop, abs( vDot ) );
			float4 vColor = vRim * float4( RimColor.rgb, RimAlpha );
			if( vDot > 0.f )
			{
				float vTime = ( vUVAnimationTime + HdrRange_Time_ClipHeight.y ) * 0.15f;
				vColor += tex2D( DiffuseMap, In.vUV0 + vUVAnimationDir * vTime );
				vColor += tex2D( DiffuseMap, ( In.vUV0 + float2( 0.20f, -0.13f ) * vTime * 0.27f ) );
			}

			float3 vEyeDir = normalize( In.vPos.xyz - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, In.vNormal );
			float pulse = ( 0.9f + 0.1f * sin( 3.141f * length( texCUBElod( EnvironmentMap, float4(reflection, 0) ).rgb ) + HdrRange_Time_ClipHeight.y * 1.f - In.vSphere.z * In.vSphere.y * 0.125f ) );
			vColor += pow( pulse, 40.0f ) * 0.1f;

			vColor.rgb = ApplyDissolve( PrimaryColor.rgb, vDamage, vColor.rgb, RimColor, In.vUV0 );

			vColor.rgb *= vBloomFactor;
			return vColor;
		}
	]]

	MainCode PixelAotPlanetShieldStellarite
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float3 RimColor = HSVtoRGB( float3( 0.3f, 1.0f, 1.0f ) );
			const float RimAlpha = 0.35f;
			const float vRimStart = 1.0f;
			const float vRimStop = 0.5f;

			// Normal
			float3 vInNormal = normalize( In.vNormal );
			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );
			float3 vNormalSample = UnpackRRxGNormal(vNormalMap);

			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), vInNormal );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float vDot = dot( vNormal, -vCamLookAtDir );

			float vRim = smoothstep( vRimStart, vRimStop, abs( vDot ) );
			float4 vColor = vRim * float4( RimColor.rgb, RimAlpha );
			if( vDot > 0.f )
			{
				float vTime = ( vUVAnimationTime + HdrRange_Time_ClipHeight.y ) * 0.15f;
				vColor += tex2D( DiffuseMap, In.vUV0 + vUVAnimationDir * vTime );
				vColor += tex2D( DiffuseMap, ( In.vUV0 + float2( 0.20f, -0.13f ) * vTime * 0.27f ) );
			}

			float3 vEyeDir = normalize( In.vPos.xyz - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, In.vNormal );
			float pulse = ( 0.9f + 0.1f * sin( 3.141f * length( texCUBElod( EnvironmentMap, float4(reflection, 0) ).rgb ) + HdrRange_Time_ClipHeight.y * 1.f - In.vSphere.z * In.vSphere.y * 0.125f ) );
			vColor += pow( pulse, 40.0f ) * 0.1f;

			vColor.rgb = ApplyDissolve( PrimaryColor.rgb, vDamage, vColor.rgb, RimColor, In.vUV0 );

			vColor.rgb *= vBloomFactor;
			return vColor;
		}
	]]

	MainCode PixelAotPlanetShieldPE
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float3 RimColor = HSVtoRGB( float3( 0.0f, 1.0f, 1.0f ) );
			const float RimAlpha = 0.35f;
			const float vRimStart = 1.0f;
			const float vRimStop = 0.5f;

			// Normal
			float3 vInNormal = normalize( In.vNormal );
			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );
			float3 vNormalSample = UnpackRRxGNormal(vNormalMap);

			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), vInNormal );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float vDot = dot( vNormal, -vCamLookAtDir );

			float vRim = smoothstep( vRimStart, vRimStop, abs( vDot ) );
			float4 vColor = vRim * float4( RimColor.rgb, RimAlpha );
			if( vDot > 0.f )
			{
				float vTime = ( vUVAnimationTime + HdrRange_Time_ClipHeight.y ) * 0.15f;
				vColor += tex2D( DiffuseMap, In.vUV0 + vUVAnimationDir * vTime );
				vColor += tex2D( DiffuseMap, ( In.vUV0 + float2( 0.20f, -0.13f ) * vTime * 0.27f ) );
			}

			float3 vEyeDir = normalize( In.vPos.xyz - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, In.vNormal );
			float pulse = ( 0.9f + 0.1f * sin( 3.141f * length( texCUBElod( EnvironmentMap, float4(reflection, 0) ).rgb ) + HdrRange_Time_ClipHeight.y * 1.f - In.vSphere.z * In.vSphere.y * 0.125f ) );
			vColor += pow( pulse, 40.0f ) * 0.1f;

			vColor.rgb = ApplyDissolve( PrimaryColor.rgb, vDamage, vColor.rgb, RimColor, In.vUV0 );

			vColor.rgb *= vBloomFactor;
			return vColor;
		}
	]]

	MainCode PixelPdxMeshStar
		ConstantBuffers = { Common, FourthKind, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD Input ) : PDX_COLOR
		{
			// --------------------------------------------------------------
			// ------------------    LAVA           -------------------------
			// --------------------------------------------------------------
			const float LAVA_ANIMATION_SPEED = 0.08;
			const float LAVA_FIELD_SIZE = 10.0;
			const float LAVA_STONE_HOTTNESS = 0.1;

			const float LAVA_TEXTURE_TILE = 10.0;
			const float LAVA_TEXTURE_PARALLAX = 0.1;

			const float STONE_TEXTURE_TILE = 25.0;
			const float STONE_TEXTURE_PARALLAX = 0.15;
			// --------------------------------------------------------------

			float2 vUV = Input.vUV0 + vUVAnimationDir * vUVAnimationTime;

			float3 vNormal = normalize( Input.vTangent ); // tangent == position

			float noise1 = texCUBE( LavaNoise, vNormal ).r - 0.5;
			float noise2 = texCUBE( LavaNoise, vNormal * 4.0f ).r - 0.5;
			float noise3 = texCUBE( LavaNoise, vNormal * 8.0f ).r - 0.5;

			float noise = noise1 + noise2 + noise3;

			float noiseAnimationTime = Time * LAVA_ANIMATION_SPEED;

			float animatedNoise = sin((noise + noiseAnimationTime) * LAVA_FIELD_SIZE);
			float invertedAnimatedNoise = 1.0 - animatedNoise;
			float invertedAnimatedNoiseRescaled = invertedAnimatedNoise * 0.5;
			float invertedAnimatedNoiseRescaled2 = invertedAnimatedNoiseRescaled * invertedAnimatedNoiseRescaled;

			float lavaMask = saturate(-animatedNoise) * saturate(-animatedNoise);

			float3 toCamera = normalize(vCamPos - Input.vPos.rgb);
			float2 parallaxOffset = invertedAnimatedNoiseRescaled * toCamera.xz;

			float2 lavaUV = vUV * LAVA_TEXTURE_TILE - (parallaxOffset * LAVA_TEXTURE_PARALLAX);
			float3 lavaTexture = tex2D( LavaDiffuse, lavaUV ).rgb;

			float2 stoneUV = vUV * STONE_TEXTURE_TILE - (parallaxOffset * STONE_TEXTURE_PARALLAX);
			float3 stoneTexture = tex2D( StoneDiffuse, stoneUV ).rgb;

			float3 heatedStone = stoneTexture * LavaHotStoneColor * ( pow(invertedAnimatedNoiseRescaled2, 0.5) + LAVA_STONE_HOTTNESS );
			float stoneLerp = (1.0 - saturate(animatedNoise));
			heatedStone = lerp(heatedStone + stoneTexture * LavaColdStoneColor, heatedStone, stoneLerp);
			float3 lava = lavaTexture * LavaBrightColor * pow(lavaMask, 0.7);

			float3 vColor = saturate(heatedStone + lava);

			// Atmosphere
			float3 vInNormal = normalize( Input.vNormal );
			float vAtmosphere = saturate( dot( vInNormal, -toCamera ) + StarAtmosphereWidth );
			vColor = lerp( vColor, StarAtmosphereColor.rgb, vAtmosphere * vAtmosphere * StarAtmosphereColor.a * StarAtmosphereIntensity );

			float vAlpha = 1.0;

			#ifdef IS_NEUTRON_STAR_SHELL
				float NdotL = saturate( 0.5 - dot( vInNormal, toCamera ) );
				vAlpha *= NdotL;
				vAlpha *= 0.2;
			#else
				vAlpha = 0.1 * vBloomFactor;

				float vRim = smoothstep( 0.5, 1.0, 1.0 - dot( vInNormal, toCamera ) );
				vColor.rgb += vColor.rgb * vRim * 3.5f;
				vColor = saturate( vColor );
			#endif

			#ifdef GUI_ICON
				vColor = saturate( vColor + normalize( vColor ) * 0.2f );
			#endif

			//return float4(3, 0, 0, 0);
			return float4(vColor.rgb*2, 0*vAlpha );
		}

	]]

	MainCode PixelPdxMeshAtmosphere
		ConstantBuffers = { Common, ThirdKind, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float3 vPos = In.vPos.xyz / In.vPos.w;



			#ifdef GUI_ICON

				float NdotL = saturate( dot( normalize( In.vNormal ), -normalize(vCamPos - vPos) ) );
					clip( Sensor - 0.5f );
				float4 vColor = AtmosphereColor * AtmosphereIntensity;
				//NdotL = pow( NdotL, 1.0f );

				return float4( vColor.rgb, dot( vec3( NdotL ), vColor.rgb ) );
			#else
				clip( Sensor - 0.5f );

				float3 vColor = AtmosphereColor.rgb;

				LightingProperties lightingProperties;

				lightingProperties._SpecularColor = AtmosphereColor.rgb * 0.5f;
				lightingProperties._Glossiness = 1.0f;
				lightingProperties._NonLinearGlossiness = GetNonLinearGlossiness(lightingProperties._Glossiness);

				lightingProperties._WorldSpacePos = vPos;
				lightingProperties._ToCameraDir = normalize(vCamPos - vPos);
				lightingProperties._Normal = normalize( In.vNormal );
				lightingProperties._Diffuse = vColor;

				float3 diffuseLight = vec3(0.0);
				float3 specularLight = vec3(0.0);
				CalculateSystemPointLight(lightingProperties, 0.13f, diffuseLight, specularLight);

				//vColor = ( saturate( float3( 0.1f, 0.1f, 0.1f ) + diffuseLight ) * lightingProperties._Diffuse ) * HdrRange_Time_ClipHeight.x
				//			+ specularLight;

				vColor = vColor * 0.15f + vColor * ( diffuseLight + specularLight ) * 2.f;

				float NdotL = saturate( dot( lightingProperties._Normal, -lightingProperties._ToCameraDir ) );
				vColor *= pow( NdotL * 1.2, 4 );

				return float4( vColor * 1.0, 1.f + NdotL*2.9f );
			#endif
		}

	]]

	MainCode PixelPdxMeshAtmosphereStar
		ConstantBuffers = { Common, FourthKind, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float3 vPos = In.vPos.xyz / In.vPos.w;



			#ifdef GUI_ICON

				float NdotL = saturate( dot( normalize( In.vNormal ), -normalize(vCamPos - vPos) ) );
				float4 vColor = StarAtmosphereColor;// * StarAtmosphereIntensity;
				NdotL = pow( NdotL, 2.f );

				return float4( vColor.rgb, dot( vec3( NdotL ), vColor.rgb ) );
			#else
				float3 vColor = StarAtmosphereColor.rgb * HdrRange_Time_ClipHeight.x ;
				clip( StarAtmosphereColor.a - 0.1f );

				float NdotL = saturate( dot( normalize( In.vNormal ), -normalize(vCamPos - vPos) ) );
				vColor *= pow( NdotL, 3 );

				return float4( vColor, pow( NdotL, 4 ) );
			#endif
		}

	]]

	MainCode PixelPdxMeshAdditive
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float2 vUV = In.vUV0;
			vUV += vUVAnimationDir * vUVAnimationTime;

			float4 vDiffuse = tex2D( DiffuseMap, vUV );

		#ifdef ANIMATE_UV
			#ifndef ANIMATE_UV_ALPHA
				vDiffuse.a = tex2D( DiffuseMap, In.vUV0 ).a;
			#endif
		#endif

		#ifdef ALPHA_TEST
			clip(vDiffuse.a - 1.0);
		#endif

			#ifdef ADD_COLOR
				vDiffuse.rgb *= PrimaryColor.rgb;
			#endif

			#ifdef ALPHA_OVERRIDE
				vDiffuse *= vAlphaOverrideMult;
			#endif

			vDiffuse.rgb *= vDiffuse.a;
			vDiffuse.a *= vBloomFactor;
			#ifdef GUI_ICON
				float vLen = length( vDiffuse.rgb );
				vDiffuse.rgb /= vLen;
				vDiffuse.a = saturate( vLen * 1.5f );
			#endif

			#ifdef BLACK_HOLE
				vDiffuse.rgb *= pow( abs(1.f - abs( dot( vCamLookAtDir, float3( 0.f, 1.f, 0.f ) ) ) ), 1.5f );
			#endif

			#ifdef DISSOLVE
				vDiffuse.rgb = ApplyDissolve( PrimaryColor.rgb, vDamage, vDiffuse.rgb, vDiffuse.rgb, In.vUV0 );
			#endif

			#ifdef DISSOLVE_USE_EROSION
				float vDissolveFactor = ( Erosion[0] ) * ( 1.0 - Erosion[2] );
				vDiffuse = vDiffuse * vDissolveFactor;
			#endif

			return vDiffuse;
		}

	]]

	MainCode PixelPdxMeshRed
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float4 vDiffuse = float4( 0.7f, 0.0f, 0.0f, 0.0f );

			return vDiffuse;
		}

	]]
	MainCode PixelPdxMeshAdditiveAlphaOverride
		ConstantBuffers = { Common, CommonWithAlphaOverrideMult }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float2 vUV = In.vUV0;
			vUV += vUVAnimationDir * vUVAnimationTime;

			float4 vDiffuse = tex2D( DiffuseMap, vUV );
			vDiffuse.a = tex2D( DiffuseMap, In.vUV0 ).a;

			vDiffuse *= vAlphaOverrideMult;

			vDiffuse.rgb *= vDiffuse.a;
			vDiffuse.a *= vBloomFactor;

			return vDiffuse;
		}

	]]

	MainCode PixelPdxMeshSimple
		ConstantBuffers = { Common, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float4 vDiffuse = tex2D( DiffuseMap, In.vUV0 );
			return vDiffuse;
		}

	]]

	MainCode PixelPdxMeshPortrait
		ConstantBuffers = { PortraitCommon, TwelthKind }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float4 UVLod = float4( (In.vUV0), 0.0, PortraitMipLevel * 0.35 );

			#ifdef CLOTHES
				float4 vDiffuse = tex2Dlod( PortraitClothes, UVLod );
			#else
				#ifdef HAIR
					float4 vDiffuse = tex2Dlod( PortraitHair, UVLod );
				#else
					float4 vDiffuse;
					if( CustomDiffuseTexture > 0.5f )
						vDiffuse = tex2Dlod( PortraitCharacter, UVLod );
					else
						vDiffuse = tex2Dlod( DiffuseMap, UVLod );
				#endif
			#endif

			return float4( ToGamma( vDiffuse.rgb ), vDiffuse.a );
		}

	]]

	MainCode PixelPdxMeshFrontendBackground
		ConstantBuffers = { Common }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float4 UVLod = float4( (In.vUV0), 0.0, 0.0 );

			float4 vDiffuse = tex2Dlod( DiffuseMap, UVLod );

			return float4( ToGamma( vDiffuse.rgb ), vDiffuse.a );
		}

	]]

	MainCode PixelPdxMeshStandardShadow
		ConstantBuffers = { Common, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSHADOW In ) : PDX_COLOR
		{
			return float4( In.vDepthUV0.xxx / In.vDepthUV0.y, 1.0f );
		}

	]]

	MainCode PixelPdxMeshNoShadow
		ConstantBuffers = { Common, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSHADOW In ) : PDX_COLOR
		{
			clip( -1.f );
			return float4( 1,1,1,1 );
		}

	]]

	MainCode PixelPdxMeshAlphaTestShadow
		ConstantBuffers = { Common, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSHADOW In ) : PDX_COLOR
		{
			float4 vColor = tex2D( DiffuseMap, In.vDepthUV0.zw );
			clip( vColor.a - 0.5f );
			return float4( In.vDepthUV0.xxx / In.vDepthUV0.y, 1.0f );
		}

	]]

	MainCode PixelDebugNormal
		ConstantBuffers = { Common, Shadow }
	[[
		float4 main( VS_OUTPUT_DEBUGNORMAL In ) : PDX_COLOR
		{
			float4 vColor = float4( 1.0f - In.vOffset, In.vOffset, 0.0f,  0.0f );
			return vColor;
		}

	]]

	MainCode PixelPdxMeshProgressBar
		ConstantBuffers = { Common, FifthKind, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float2 vUV = In.vUV0;

			#ifdef HEALTH_BAR
				float vValue = vHealth;
			#else
				float vValue = vProgressBarValue;
			#endif

			float4 vDiffuse = tex2D( DiffuseMap, vUV );
			vDiffuse.a *= saturate( ( vValue - vUV.y ) * 100.f );

			float4 vColor = vDiffuse;

			#ifdef COLORED
			vColor *= BARPrimaryColor;
			#endif

			return vColor;
		}

	]]

	MainCode PixelPdxMeshMapIcon
		ConstantBuffers = { SixthKind, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float2 vUV = In.vUV0;
			float4 vColor = tex2D( DiffuseMap, vUV );

			#ifdef COLORED
			vColor *= ProgressBarPrimaryColor;
			#endif

			return vColor;
		}
	]]

	MainCode PixelPdxMeshNavigationButton
		ConstantBuffers = { Common, SeventhKind, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHNAVIGATIONBUTTON In ) : PDX_COLOR
		{
			float2 vUV = In.vUV0;
			vUV.x *= 4.f * 0.2f;//Mesh is uv-mapped for a 4-frame texture but we use a 5-frame texture
			float2 vOffset = float2( 0.2f, 0.f );
			float4 vColorUp 		= tex2D( DiffuseMap, vUV + vOffset * 0.f );
			float4 vColorOver 		= tex2D( DiffuseMap, vUV + vOffset * 2.f );
			float4 vColorDown 		= tex2D( DiffuseMap, vUV + vOffset * 1.f );
			float4 vColorSelected 	= tex2D( DiffuseMap, vUV + vOffset * 4.f );

			float4 vColor = vColorUp;
			vColor = lerp( vColor, vColorSelected, vSelectedValue );
			vColor = lerp( vColor, vColorOver, vOverValue );
			vColor = lerp( vColor, vColorDown, vDownValue );

		    float Grey = dot( vColorUp.rgb, float3( 0.212671f, 0.715160f, 0.072169f ) );
		    vColor.rgb = lerp( float3(Grey, Grey, Grey), vColor.rgb, vIntelValue );

			return vColor;
		}
	]]



	MainCode PixelPdxMeshShieldFlipBook
		ConstantBuffers = { Common, NinthKind, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSHIELD In ) : PDX_COLOR
		{
		//	float2 v = In.vUV0.xy - float2( 0.5f, 0.5f );
		//return abs( sin( sqrt( dot( v, v ) ) * 30.f ) );

			const uintIfSupported nColumns = 4;
			const uintIfSupported nRows = 4;
			const float vTimePerFrame = 1.0f / ( nColumns * nRows );
			float2 vFrameUV  = float2( 1.0f / nColumns, 1.0f / nRows );

			//float vTime = HdrRange_Time_ClipHeight.y;//vObjectTime;
			//vTime = mod( vTime * 0.5, 1.0f );
			float vTime = vObjectTime;

			float vFrame = min( nColumns * nRows - 1, vTime / vTimePerFrame );
			uintIfSupported nBaseFrame = uintIfSupported( abs( floor( vFrame ) ) );
			uintIfSupported nNextFrame = uintIfSupported( abs( ceil( vFrame ) ) );

			float2 vUV1 = float2( vFrameUV.x * mod( nBaseFrame, nColumns ), vFrameUV.y * ( nBaseFrame / nColumns ) );
			float2 vUV2 = float2( vFrameUV.x * mod( nNextFrame, nColumns ), vFrameUV.y * ( nNextFrame / nColumns ) );

			float4 vColor1 = tex2D( DiffuseMap, vUV1 + In.vUV0 * vFrameUV );
			float4 vColor2 = tex2D( DiffuseMap, vUV2 + In.vUV0 * vFrameUV );

			float4 vColor = lerp( vColor1, vColor2, frac( vFrame ) );

			//vColor.rgb *= vColor.a;

			vColor.a = pow( vColor.a * 5.0f, 2 );

			return vColor;
		}
	]]

	MainCode PixelPdxMeshShieldUVStretch
		ConstantBuffers = { Common, NinthKind, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSHIELD In ) : PDX_COLOR
		{
			float2 vHalf = float2( 0.5f, 0.5f );

			float4 vColor = float4( 0.f, 0.f, 0.f, 0.f );

			int nNumLoops = int( min( vNumLoops + 1.0f, 16.0f ) );
#ifdef PDX_DIRECTX_9
// Silences warning due the tex2D() call forcing an unroll
			[unroll]
#endif
			for( int i = 0; i <nNumLoops; ++i )
			{
				float vTime = vObjectTime;//mod( HdrRange_Time_ClipHeight.y * 1.0f, 0.5f );//
				vTime += vTimePerLoop * i;
				float vUVScale = 1.0f / vTime;
				float2 vUV = saturate( vHalf + ( In.vUV0.xy - vHalf ) * vUVScale );

				float4 vDiffuse = tex2D( DiffuseMap, vUV );
				vDiffuse *= saturate( 1.0f - vTime );
				vColor.rgb += vDiffuse.rgb * vDiffuse.a;
				vColor.a += vDiffuse.a;//max( vColor.a, vDiffuse.a );
			}

			//return max( vColor, float4( 1.0f, 1.0f, 1.0f, nNumLoops / 20.f ) );
			//vColor.rgb *= vColor.a;
			vColor.a = pow( vColor.a * 5.0f, 2.f );
			return vColor;
		}
	]]
	
	MainCode PixelPdxMeshInvisible
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			clip( -1 );
			return float4( 0.f, 0.f, 0.f, 0.f );
		}
	]]
	Code
		ConstantBuffers = { ConstructionConstants }
	[[
		float GetConstructionRawProgress()
		{			
			//return frac( HdrRange_Time_ClipHeight.y * 0.05f );
			//return 0.65f;
			return vConstructionProgress;
		}
		float CalcLocalConstructionProgress( float vRawProgress, float vLocalNoise )
		{
			const float vMaterializeSpan = 0.01f;
			
			float vProgress = vRawProgress * ( 1.f + vMaterializeSpan );
			float vUpper = vProgress;
			float vLower = vProgress - vMaterializeSpan;
			return 1.f - ( ( vLocalNoise - vLower ) / vMaterializeSpan );
		}
	]]
	MainCode PixelConstructionOpaque
		ConstantBuffers = { Common, ConstructionConstants, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float vRawProgress = GetConstructionRawProgress();
			float vProgress = CalcLocalConstructionProgress( vRawProgress, tex2D( CustomTexture, In.vUV0 ).r );
			clip( vProgress - 1.f );
			
			
			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );
			float3 vNormalSample =  UnpackRRxGNormal(vNormalMap);
			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), normalize( In.vNormal ) );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float4 vDiffuse = tex2D( DiffuseMap, In.vUV0 /*+ vUVAnimationDir * vUVAnimationTime*/ );
			
			float3 vPos = In.vPos.xyz / In.vPos.w;
			float4 vProperties = tex2D( SpecularMap, In.vUV0 );

			LightingProperties lightingProperties;
			lightingProperties._WorldSpacePos = vPos;
			lightingProperties._ToCameraDir = normalize(vCamPos - vPos);

			float3 vColor = vDiffuse.rgb;
			
			 // Gamma - Linear ping pong
			 // All content is already created for gamma space math, so we do this in gamma space
			vColor = ToGamma(vColor);
			vColor = ToLinear(lerp( vColor, vColor * ( vProperties.r * PrimaryColor_Construction.rgb ), vProperties.r ));
			
			lightingProperties._Glossiness = vProperties.a;
			lightingProperties._NonLinearGlossiness = GetNonLinearGlossiness(lightingProperties._Glossiness);

			float vCubemapIntensity = CubemapIntensity;

			float fShadowTerm = 1.0f;
			lightingProperties._Normal = vNormal;
			float SpecRemapped = vProperties.g * vProperties.g * 0.4;
			float vMetalness = vProperties.b;
			
			float MetalnessRemapped = 1.0 - (1.0 - vMetalness) * (1.0 - vMetalness);

			lightingProperties._Diffuse = MetalnessToDiffuse(MetalnessRemapped, vColor);
			lightingProperties._SpecularColor = MetalnessToSpec(MetalnessRemapped, vColor, SpecRemapped);

			float3 diffuseLight = vec3(0.0);
			float3 specularLight = vec3(0.0);
			CalculateSystemPointLight(lightingProperties, 1.0f, diffuseLight, specularLight);
			
			float3 vEyeDir = normalize( vPos - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, vNormal );
			float MipmapIndex = GetEnvmapMipLevel(lightingProperties._Glossiness);
			float3 reflectiveColor = texCUBElod( EnvironmentMap, float4(reflection, MipmapIndex) ).rgb * vCubemapIntensity;
			specularLight += reflectiveColor * FresnelGlossy(lightingProperties._SpecularColor, -vEyeDir, lightingProperties._Normal, lightingProperties._Glossiness);

			float vAmbientIntensity = 0.f;

			vColor = ComposeLight(lightingProperties, vAmbientIntensity, diffuseLight, specularLight);			
			
			float vEmissive = vNormalMap.b;
						
			//Recolor emissive
			vDiffuse.rgb = lerp( vDiffuse.rgb, vec3( max( vDiffuse.r, max( vDiffuse.g, vDiffuse.b ) ) ) * PrimaryColor_Construction.rgb, saturate( vEmissive * vEmissiveRecolorCrunch_Construction ) );
			
			vColor = lerp( vColor, vDiffuse.rgb, vEmissive );
			DebugReturn(vColor, lightingProperties, fShadowTerm);
			float alpha = vDiffuse.a;			
			#ifndef NO_ALPHA_MULTIPLIED_EMISSIVE
				alpha *= vEmissive;
				//alpha *= vBloomFactor;
			#endif
			return float4( vColor, alpha );
		}
	]]
	MainCode PixelConstruction
		ConstantBuffers = { Common, ConstructionConstants, Shadow }
	[[		
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float vRawProgress = GetConstructionRawProgress();
			float vProgress = CalcLocalConstructionProgress( vRawProgress, tex2D( CustomTexture, In.vUV0 ).r );
			
			//Clip. Let the opaque shader handle this
			#ifdef CONSTRUCTION_DONE
				clip( vProgress - 1.f );
			#else
				clip( 1.f - vProgress );
			#endif
			
			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );
			float3 vNormalSample =  UnpackRRxGNormal(vNormalMap);
			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), normalize( In.vNormal ) );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float4 vDiffuse = tex2D( DiffuseMap, In.vUV0 /*+ vUVAnimationDir * vUVAnimationTime*/ );
			float vNoise = dot( vDiffuse, vDiffuse ) * 1.f;
			//float vNoise = vDiffuse.r * 1.3f + vDiffuse.g * 2.1f + vDiffuse.b * 3.7f + vDiffuse.a * 5.11f;
			vNoise += dot( vDiffuse.rgb, float3( 0.f, -1.f, 0.f ) ) * 5;
			
			float vTime = HdrRange_Time_ClipHeight.y;

			float4 vColor4 = ConstructionColor;
			
			//float vScanLine = pow( saturate( sin( vTime - In.vPos.y ) ), 500.f );
			//float vScanLine = 1.f - pow( saturate( mod( ( vTime + In.vPos.y + vNoise + 1000.f ) * 0.5f, 5.f ) ), 0.05f );
						
			vColor4.a *= saturate( smoothstep( -1.0f, 0.0f, dot( vNormal, vCamLookAtDir ) ) );
			//vColor4.a = saturate( vColor4.a + vScanLine );
			
			//Blend to opaque
			float3 vPos = In.vPos.xyz / In.vPos.w;
			float4 vProperties = tex2D( SpecularMap, In.vUV0 );

			LightingProperties lightingProperties;
			lightingProperties._WorldSpacePos = vPos;
			lightingProperties._ToCameraDir = normalize(vCamPos - vPos);

			float vEmissive = vNormalMap.b;
			//Recolor emissive
			vDiffuse.rgb = lerp( vDiffuse.rgb, vec3( max( vDiffuse.r, max( vDiffuse.g, vDiffuse.b ) ) ) * PrimaryColor_Construction.rgb, saturate( vEmissive * vEmissiveRecolorCrunch_Construction ) );
			
			float3 vColor = vDiffuse.rgb;// * ( 1.f - vEmissive );

			lightingProperties._Glossiness = vProperties.a;
			lightingProperties._NonLinearGlossiness = GetNonLinearGlossiness(lightingProperties._Glossiness);

			float vCubemapIntensity = CubemapIntensity;

			float fShadowTerm = 1.0f;
			lightingProperties._Normal = vNormal;
			float SpecRemapped = vProperties.g * vProperties.g * 0.4;
			float vMetalness = vProperties.b;
			
			float MetalnessRemapped = 1.0 - (1.0 - vMetalness) * (1.0 - vMetalness);

			lightingProperties._Diffuse = MetalnessToDiffuse(MetalnessRemapped, vColor);
			lightingProperties._SpecularColor = MetalnessToSpec(MetalnessRemapped, vColor, SpecRemapped);

			float3 diffuseLight = vec3(0.0);
			float3 specularLight = vec3(0.0);
			CalculateSystemPointLight(lightingProperties, 1.0f, diffuseLight, specularLight);
			float3 vEyeDir = normalize( vPos - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, vNormal );
			float MipmapIndex = GetEnvmapMipLevel(lightingProperties._Glossiness);
			float3 reflectiveColor = texCUBElod( EnvironmentMap, float4(reflection, MipmapIndex) ).rgb * vCubemapIntensity;
			specularLight += reflectiveColor * FresnelGlossy(lightingProperties._SpecularColor, -vEyeDir, lightingProperties._Normal, lightingProperties._Glossiness);

			float vAmbientIntensity = 0.f;

			vColor = ComposeLight(lightingProperties, vAmbientIntensity, diffuseLight, specularLight); 
			#ifdef BLEND_TO_DIFFUSE_ALPHA
				float vAlpha = vDiffuse.a;
			#else
				float vAlpha = 1.0f;
			#endif
				return lerp( vColor4, float4( vColor, vAlpha ), saturate( vProgress ) );
		}
	]]

	MainCode PixelPdxMeshCircleGradient
		ConstantBuffers = { Common, EleventhKind, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float4 vColor = vAuraColor;
			float2 vUV = In.vUV0;
			vUV.y = min( 0.99f, vUV.y * vAuraRadius * 0.02f );
			vColor *= tex2D( DiffuseMap, vUV ).r;
			vColor.a *= saturate( vUV.y * 100.f );	//Smoother edge
			return vColor;
		}
	]]
	
	MainCode PixelOmniMeshShip
		ConstantBuffers = { Common, ShipConstants, Shadow, TiledPointLight }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			const float  DMG_START		= 0.5f;
			const float  DMG_END		= 1.0f;
			const float  DMG_TILING		= 3.5f;
			const float  DMG_EDGE		= 0.0f;
			const float3 DMG_EDGE_COLOR	= float3( 10.0f, 6.6f, 0.1f );

			float4 vDiffuse = tex2D( DiffuseMap, In.vUV0 + vUVAnimationDir * vUVAnimationTime );

			#ifndef ANIMATE_NORMAL
				float4 vNormalMap = tex2D( NormalMap, In.vUV0 );
			#else
				float4 vNormalMap = tex2D( NormalMap, In.vUV0 + vUVAnimationDir * vUVAnimationTime );
			#endif

			#ifndef ANIMATE_SPECULAR
				float4 vProperties = tex2D( SpecularMap, In.vUV0 );
			#else
				float4 vProperties = tex2D( SpecularMap, In.vUV0 + vUVAnimationDir * vUVAnimationTime );
			#endif

			#ifdef COLORED_PATTERNS
				float vColorMask = tex2D( CustomTexture, In.vUV1 + vUVAnimationDir * vUVAnimationTime ).r;
				vDiffuse.rgb = lerp( vDiffuse.rgb, ( vDiffuse.rgb ) * normalize( PrimaryColor.rgb ) * 15, vColorMask );
			#endif
			
			float3 vPos = In.vPos.xyz / In.vPos.w;

			float3 vInNormal = normalize( In.vNormal );

			//Fade in damage texture
			float4 vDamageTex = tex2D( CustomTexture2, In.vUV0 * DMG_TILING );
			//float vDmgTemp = 1.0f;
			float vDmgTemp = vDamage;
			//float vDmgTemp = saturate( mod( HdrRange_Time_ClipHeight.y * 0.25f, 1.25f ) );
			vDmgTemp = 1.0f - saturate( ( vDmgTemp - DMG_START ) / ( DMG_END - DMG_START ) );
			float vDamageValue = ( vDamageTex.a - vDmgTemp ) * 5.0f;
			if( vDamageTex.a <= 0.001f )
			{
				vDamageValue = 0.f;
			}
			float vDamageEdge = DMG_EDGE * saturate( 1.0f - abs( ( vDamageValue - 0.5 ) * 2 ) );
			vDamageValue = saturate( vDamageValue );
			vDiffuse.rgb = lerp( vDiffuse.rgb, vDamageTex.rgb, vDamageValue );
			vProperties = lerp( vProperties, vec4( 0.f ), vDamageValue );

			vDiffuse.rgb *= lerp( vec3( 1.f ), DMG_EDGE_COLOR, saturate( vDamageEdge ) );


			LightingProperties lightingProperties;
			lightingProperties._WorldSpacePos = vPos;
			lightingProperties._ToCameraDir = normalize(vCamPos - vPos);


			float vEmissive = vNormalMap.b;
			float3 vNormalSample =  UnpackRRxGNormal(vNormalMap);

			lightingProperties._Glossiness = vProperties.a;
			lightingProperties._NonLinearGlossiness = GetNonLinearGlossiness(lightingProperties._Glossiness);

			 #ifndef RECOLOR_EMISSIVE
                vDiffuse.rgb = lerp( vDiffuse.rgb, vec3( max( vDiffuse.r, max( vDiffuse.g, vDiffuse.b ) ) ) * PrimaryColor.rgb + ( PrimaryColor.rgb * 0.02 ), saturate( vEmissive ) );
            #else
                vDiffuse.rgb = lerp( vDiffuse.rgb, vec3( max( vDiffuse.r, max( vDiffuse.g, vDiffuse.b ) ) ) * PrimaryColor.rgb + ( PrimaryColor.rgb * 0.02 ), saturate( vEmissive * vEmissiveRecolorCrunch ) );
            #endif
			
			vEmissive *= 1.f - vDamageValue;
			vEmissive += vDamageEdge;
						
			float3 vColor = vDiffuse.rgb;

			float vCubemapIntensity = CubemapIntensity;

			 // Gamma - Linear ping pong
			 // All content is already created for gamma space math, so we do this in gamma space
			vColor = ToGamma(vColor);
			vColor = ToLinear(lerp( vColor, vColor * ( vProperties.r * PrimaryColor.rgb ), vProperties.r ));

			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), vInNormal );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float fShadowTerm = 1.0f;
			lightingProperties._Normal = vNormal;
			float SpecRemapped = vProperties.g * vProperties.g * 0.4;
			float vMetalness = vProperties.b;
			
			float MetalnessRemapped = 1.0 - (1.0 - vMetalness) * (1.0 - vMetalness);

			lightingProperties._Diffuse = MetalnessToDiffuse(MetalnessRemapped, vColor);
			lightingProperties._SpecularColor = MetalnessToSpec(MetalnessRemapped, vColor, SpecRemapped);

			float3 diffuseLight = vec3(0.0);
			float3 specularLight = vec3(0.0);
			//CalculateSunLight(lightingProperties, fShadowTerm, diffuseLight, specularLight);
			CalculateSystemPointLight(lightingProperties, 1.0f, diffuseLight, specularLight);
			CalculateShipCameraLights(lightingProperties, 1.0f, diffuseLight, specularLight);
			CalculatePointLights(lightingProperties, LightDataMap, LightIndexMap, diffuseLight, specularLight);

			float3 vEyeDir = normalize( vPos - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, vNormal );
			float MipmapIndex = GetEnvmapMipLevel(lightingProperties._Glossiness);
			float3 reflectiveColor = texCUBElod( EnvironmentMap, float4(reflection, MipmapIndex) ).rgb * vCubemapIntensity;
			specularLight += reflectiveColor * FresnelGlossy(lightingProperties._SpecularColor, -vEyeDir, lightingProperties._Normal, lightingProperties._Glossiness);

			float vCamDistance = length( vPos - vCamPos );
			float vCamDistFadeValue = saturate( ( vCamDistance - CamLightFadeStartStop.x ) / ( CamLightFadeStartStop.y - CamLightFadeStartStop.x ) );
			float vAmbientIntensity = lerp( AmbientIntensityNearFar.x, AmbientIntensityNearFar.y, vCamDistFadeValue );
			
			vColor = ComposeLight(lightingProperties, vAmbientIntensity, diffuseLight, specularLight);
			vColor = lerp( vColor, vDiffuse.rgb, vEmissive );

			float alpha = vDiffuse.a;
			#ifndef GUI_ICON
			#ifndef NO_ALPHA_MULTIPLIED_EMISSIVE
				alpha *= vEmissive;
			#endif
			#endif

		#ifdef RIM_LIGHT
			float vRimStart = lerp( RimLightStartNearFar.x, RimLightStartNearFar.y, vCamDistFadeValue );
			float vRimStop = lerp( RimLightStopNearFar.x, RimLightStopNearFar.y, vCamDistFadeValue );

			float vRim = smoothstep( vRimStart, vRimStop, 1.0f - dot( vNormal, lightingProperties._ToCameraDir ) );

			vColor.rgb = lerp( vColor.rgb, RimLightDiffuse.rgb, saturate( vRim ) );
		#endif

			DebugReturn(vColor, lightingProperties, fShadowTerm);

			vColor = ApplyDissolve( PrimaryColor.rgb, vDamage, vColor.rgb, vDiffuse.rgb, In.vUV0 );

			return float4(vColor, alpha  );
		}

	]]

	MainCode PixelOmniMeshWhiteHole
		ConstantBuffers = { Common, FourthKind, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float3 p = vCamRightDir * dot( In.vNormal, vCamRightDir );
			float3 vInvertedNormal = In.vNormal + ( p - In.vNormal ) * 2.f;
			float3 vEyeDir = normalize( In.vPos.xyz - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, vInvertedNormal );

			float3 Color = texCUBElod( EnvironmentMap, float4(reflection, 1) ).rgb - 1;
			
			float vDot = dot( -vEyeDir, In.vNormal );
			Color = saturate( Color * pow( 1.05f - vDot, 7.f ) +0.2 );
			Color += (StarAtmosphereColor.rgb + 1) * smoothstep( 0.15f, 0.11f, vDot ) * 0.25f * StarAtmosphereColor.a;

			return float4( Color * vBloomFactor, 1.0f );
		}
	]]

	MainCode PixelOmniMeshED
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float3 RimColor = PrimaryColor.rbg;
			const float RimAlpha = 0.9f;
			const float vRimStart = 0.11f;
			const float vRimStop = 0.1f;

			// Normal
			float3 vInNormal = normalize( In.vNormal );
			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );
			float3 vNormalSample = UnpackRRxGNormal(vNormalMap);

			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), vInNormal );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float vDot = dot( vNormal, -vCamLookAtDir );

			float4 vProperties = tex2D( SpecularMap, In.vUV0 );			
			float vRim = smoothstep( vRimStart, vRimStop, abs( vDot ) );
			float4 vColor = vRim * float4( PrimaryColor.rbg, RimAlpha );

			vColor.rgb = vColor.rgb * 0.5f;
			vColor.rgb += PrimaryColor.rgb * vProperties.r;

			if( vDot > 0.f )
			{
				float vTime = ( vUVAnimationTime + HdrRange_Time_ClipHeight.y ) * 0.15f;
				vColor += tex2D( DiffuseMap, In.vUV0 + vUVAnimationDir * vTime );
				vColor += tex2D( DiffuseMap, ( In.vUV0 + float2( 0.20f, -0.13f ) * vTime * 0.27f ) );
			}

			float3 vEyeDir = normalize( In.vPos.xyz - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, In.vNormal );
			//  float pulse = ( 0.9f + 0.1f * sin( 3.141f * length( texCUBElod( EnvironmentMap, float4(reflection, 0) ).rgb ) + HdrRange_Time_ClipHeight.y * 1.f - 1.f * In.vSphere.y * 0.125f ) );
			float pulse = ( 0.9f + 0.1f * sin( 3.141f * length( texCUBElod( EnvironmentMap, float4(reflection, 0) ).rgb ) + 0 ) );
			vColor += pow( pulse, 40.0f ) * 0.1f;

			vColor.rgb = ApplyDissolve( PrimaryColor.rgb, vDamage, vColor.rgb, RimColor, In.vUV0 );
			vColor.rgb *= PrimaryColor.rgb;
			vColor.rgb *= vBloomFactor;
			return vColor;
		}
	]]

	MainCode PixelOmniMeshEDSphere
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float3 RimColor = HSVtoRGB( float3( 0.2f, 1.1f, 0.3f ) );
			const float RimAlpha = 0.9f;
			const float vRimStart = 0.11f;
			const float vRimStop = 0.1f;

			// Normal
			float3 vInNormal = normalize( In.vNormal );
			float4 vNormalMap = tex2D( NormalMap, In.vUV0 );
			float3 vNormalSample = UnpackRRxGNormal(vNormalMap);

			float3x3 TBN = Create3x3( normalize( In.vTangent ), normalize( In.vBitangent ), vInNormal );
			float3 vNormal = normalize(mul( vNormalSample, TBN ));

			float vDot = dot( vNormal, -vCamLookAtDir );

			float4 vProperties = tex2D( SpecularMap, In.vUV0 );			
			float vRim = smoothstep( vRimStart, vRimStop, abs( vDot ) );
			float4 vColor = vRim * float4( RimColor.rbg, RimAlpha );

			vColor.rgb = vColor.rgb * 0.5f;
			vColor.rgb += RimColor.rgb * vProperties.r;

			if( vDot > 0.f )
			{
				float vTime = ( vUVAnimationTime + HdrRange_Time_ClipHeight.y ) * 0.15f;
				vColor += tex2D( DiffuseMap, In.vUV0 + vUVAnimationDir * vTime );
				vColor += tex2D( DiffuseMap, ( In.vUV0 + float2( 0.20f, -0.13f ) * vTime * 0.27f ) );
			}

			float3 vEyeDir = normalize( In.vPos.xyz - vCamPos.xyz );
			float3 reflection = reflect( vEyeDir, In.vNormal );
			float pulse = ( 0.9f + 0.1f * sin( 3.141f * length( texCUBElod( EnvironmentMap, float4(reflection, 0) ).rgb ) + HdrRange_Time_ClipHeight.y * 1.f - 1.f * In.vSphere.y * 0.125f ) );
			// float pulse = ( 0.9f + 0.1f * sin( 3.141f * length( texCUBElod( EnvironmentMap, float4(reflection, 0) ).rgb ) + 0 ) );
			vColor += pow( pulse, 40.0f ) * 0.1f;

			vColor.rgb = ApplyDissolve( RimColor.rbg, vDamage, vColor.rgb, RimColor, In.vUV0 );
			vColor.rgb *= RimColor.rgb;
			vColor.rgb *= vBloomFactor;
			return vColor;
		}
	]]

	MainCode PixelPdxMeshAdditiveRS
		ConstantBuffers = { Common, ShipConstants, Shadow }
	[[
		float4 main( VS_OUTPUT_PDXMESHSTANDARD In ) : PDX_COLOR
		{
			float2 vUV = In.vUV0;
			vUV += vUVAnimationDir * vUVAnimationTime;

			float4 vDiffuse = tex2D( DiffuseMap, vUV );

		#ifdef ANIMATE_UV
			#ifndef ANIMATE_UV_ALPHA
				vDiffuse.a = tex2D( DiffuseMap, In.vUV0 ).a;
			#endif
		#endif

		#ifdef ALPHA_TEST
			clip(vDiffuse.a - 1.0);
		#endif

			#ifdef ADD_COLOR
				vDiffuse.rgb *= PrimaryColor.rgb;
			#endif

			#ifdef ALPHA_OVERRIDE
				vDiffuse *= vAlphaOverrideMult;
			#endif

			vDiffuse.rgb *= vDiffuse.a;
			vDiffuse.a *= vBloomFactor;
			#ifdef GUI_ICON
				float vLen = length( vDiffuse.rgb );
				vDiffuse.rgb /= vLen;
				vDiffuse.a = saturate( vLen * 1.5f );
			#endif

			#ifdef BLACK_HOLE
				vDiffuse.rgb *= pow( 1.f - abs( dot( vCamLookAtDir, float3( 0.f, 1.f, 0.f ) ) ), 1.5f );
			#endif

			#ifdef DISSOLVE
			vDiffuse.rgb = ApplyDissolve( PrimaryColor.rgb, vDamage, vDiffuse.rgb, vDiffuse.rgb, In.vUV0 );
			#endif

			return vDiffuse;
		}

	]]
}


BlendState BlendState
{
	BlendEnable = no
	WriteMask = "RED|GREEN|BLUE|ALPHA"
}

BlendState BlendStateAlphaBlend
{
	BlendEnable = yes
	SourceBlend = "SRC_ALPHA"
	DestBlend = "INV_SRC_ALPHA"
	WriteMask = "RED|GREEN|BLUE"
}

BlendState BlendStateAdditiveBlend
{
	BlendEnable = yes
	SourceBlend = "SRC_ALPHA"
	DestBlend = "ONE"
	WriteMask = "RED|GREEN|BLUE|ALPHA"
}
BlendState BlendStateAdditiveBlendNoAlpha
{
	BlendEnable = yes
	SourceBlend = "SRC_ALPHA"
	DestBlend = "ONE"
	WriteMask = "RED|GREEN|BLUE"
}

BlendState BlendStateAlphaBlendWriteAlpha
{
	BlendEnable = yes
	SourceBlend = "SRC_ALPHA"
	DestBlend = "INV_SRC_ALPHA"
	DestAlpha = "ONE"
	WriteMask = "RED|GREEN|BLUE|ALPHA"
}

BlendState BlendStateAlphaShadow
{
	BlendEnable = no
	AlphaTest = yes
	WriteMask = "RED|GREEN|BLUE"
}

DepthStencilState DepthStencilNoZWrite
{
	DepthEnable = yes
	DepthWriteMask = "DEPTH_WRITE_ZERO"
}

DepthStencilState DepthStencilNoZ
{
	DepthEnable = no
	DepthWriteMask = "DEPTH_WRITE_ZERO"
}

RasterizerState RasterizerStateBack
{
	FillMode = "FILL_SOLID"
	CullMode = "CULL_BACK"
	FrontCCW = yes
}

RasterizerState RasterizerStateNoCulling
{
	CullMode = "CULL_NONE"
}

Effect PdxMeshStandard
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
}

Effect PdxMeshStandardSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
}

Effect PdxMeshStandardShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshStandardSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditive
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "DISSOLVE" }
}

Effect PdxMeshAlphaAdditiveSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "DISSOLVE" }
}


Effect PdxMeshWPO
{
	VertexShader = "VertexPdxMeshWPO"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" "DISSOLVE" "DISSOLVE_USE_EROSION" }
}

Effect PdxMeshWPOShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshWPOAlphaBlend
{
	VertexShader = "VertexPdxMeshWPO"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" "DISSOLVE" "DISSOLVE_USE_EROSION" }
}

Effect PdxMeshWPOAlphaBlendShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}
Effect PdxMeshAlphaAdditiveAnimateUV
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" "DISSOLVE" }
}

Effect PdxMeshAlphaAdditiveAnimateUVErosion
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" "DISSOLVE" "DISSOLVE_USE_EROSION" }
}

Effect PdxMeshAlphaAdditiveAnimateUVErosionSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" "DISSOLVE" "DISSOLVE_USE_EROSION" }
}

Effect PdxMeshAlphaAnimateUVErosion
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" "DISSOLVE" "DISSOLVE_USE_EROSION" }
}

Effect PdxMeshAlphaAnimateUVErosionSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" "DISSOLVE" "DISSOLVE_USE_EROSION" }	
}

Effect PdxMeshAlphaAnimateUVErosionSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAnimateUVErosionShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditiveAnimateUVErosionSkinnedShadow
{
VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}
Effect PdxMeshColorAlphaAdditive 
{
    VertexShader = "VertexPdxMeshStandard"
    PixelShader = "PixelPdxMeshAdditive"
    BlendState = "BlendStateAdditiveBlend"
    DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ADD_COLOR" "DISSOLVE" }
}

Effect PdxMeshColorAlphaAdditiveSkinned
{
    VertexShader = "VertexPdxMeshStandardSkinned"
    PixelShader = "PixelPdxMeshAdditive"
    BlendState = "BlendStateAdditiveBlend"
    DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ADD_COLOR" "DISSOLVE" }
}

Effect PdxMeshColorAlphaAdditiveStandardShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshColorAlphaAdditiveSkinnedShadow
{
    VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshColorAlphaAdditiveAnimateUV
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ADD_COLOR" "ANIMATE_UV" "DISSOLVE" }
}

Effect PdxMeshAlphaAdditiveAnimateUVAlphaOverride
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAdditiveAlphaOverride"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect PdxMeshAlphaAdditiveAnimateUVSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" "DISSOLVE" }	
}

Effect PdxMeshAlphaAdditiveAnimateUVNoDissolve
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" }
}

Effect PdxMeshAlphaAdditiveAnimateUVNoDissolveSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" }
}

Effect PdxMeshAlphaAdditiveAnimateUVAlpha
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" "ANIMATE_UV_ALPHA" "DISSOLVE" }
}

Effect PdxMeshAlphaAdditiveAnimateUVAlphaSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "ANIMATE_UV" "ANIMATE_UV_ALPHA" "DISSOLVE" }	
}

Effect PdxMeshAlphaAdditiveShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditiveSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditiveAnimateUVShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditiveAnimateUVErosionShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditiveAnimateUVAlphaOverrideShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditiveAnimateUVSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}
Effect PdxMeshAlphaAdditiveAnimateUVNoDissolveShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditiveAnimateUVNoDissolveSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditiveAnimateUVAlphaShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditiveAnimateUVAlphaSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshColorAlphaAdditiveAnimateUVShadow
{
    VertexShader = "VertexPdxMeshStandardShadow"
    PixelShader = "PixelPdxMeshNoShadow"
    Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditiveNoZ
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZ"
	Defines = { "DISSOLVE" }
}

Effect PdxMeshAlphaAdditiveNoZSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZ"
	Defines = { "DISSOLVE" }
}

Effect PdxMeshAlphaAdditiveNoZShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaAdditiveNoZSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAdvanced
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "EMISSIVE" "GLOSSINESS" }
}

Effect PdxMeshAdvancedSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "EMISSIVE" "GLOSSINESS" }
}

Effect PdxMeshAdvancedShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAdvancedSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshTilingAO
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "EMISSIVE" "GLOSSINESS" "TILING_AO" }
}

Effect PdxMeshTilingAOSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "EMISSIVE" "GLOSSINESS" "TILING_AO" }
}

Effect PdxMeshTilingAOShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshTilingAOSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshColor
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "ADD_COLOR" }
}

Effect PdxMeshColorSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "ADD_COLOR"  }
}

Effect PdxMeshColorShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshColorSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaBlend
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "ALPHA_TEST" }
}

Effect PdxMeshAlphaBlendSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "ALPHA_TEST" }
}

Effect PdxMeshAlphaBlendShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshAlphaTestShadow"
	BlendState = "BlendStateAlphaShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAlphaBlendSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshAlphaTestShadow"
	BlendState = "BlendStateAlphaShadow"
	Defines = { "IS_SHADOW" }
}

Effect MaterialTest
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	Defines = {  "HACK" }
}

Effect MaterialTestShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect DebugNormal
{
	VertexShader = "VertexDebugNormal"
	PixelShader = "PixelDebugNormal"
}

Effect DebugNormalSkinned
{
	VertexShader = "VertexDebugNormalSkinned"
	PixelShader = "PixelDebugNormal"
}

Effect PdxMeshTerra
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "ADD_COLOR" "EMISSIVE"  }
}

Effect PdxMeshTerraSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "ADD_COLOR" "EMISSIVE"  }
}

Effect PdxMeshTerraAlphaBlend
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "EMISSIVE"  }
}

Effect PdxMeshTerraAlphaBlendSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "EMISSIVE"  }
}

Effect AlphaBlend_00
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshShip"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "NO_ALPHA_MULTIPLIED_EMISSIVE" }
}

Effect AlphaBlend_00Skinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshShip"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "NO_ALPHA_MULTIPLIED_EMISSIVE" }
}

Effect AlphaBlend_00Construction
{
	VertexShader = "VertexPdxMeshStandard"
	#PixelShader = "PixelConstructionOpaque"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	Defines = { BLEND_TO_DIFFUSE_ALPHA CONSTRUCTION_DONE }
}
Effect AlphaBlend_00ConstructionAlphaBlend
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	defines = { BLEND_TO_DIFFUSE_ALPHA }
}
Effect AlphaBlend_00ConstructionSkinned
{
	VertexShader = "VertexPdxMeshStandard"
	#PixelShader = "PixelConstructionOpaque"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	defines = { BLEND_TO_DIFFUSE_ALPHA CONSTRUCTION_DONE }
}
Effect AlphaBlend_00ConstructionAlphaBlendSkinned
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	defines = { BLEND_TO_DIFFUSE_ALPHA }
}



Effect AlphaBlendNoDepth_00
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshShip"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "NO_ALPHA_MULTIPLIED_EMISSIVE" }
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect AlphaBlendNoDepth_00Skinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshShip"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "NO_ALPHA_MULTIPLIED_EMISSIVE" }
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect AlphaBlendNoDepth_00Construction
{
	VertexShader = "VertexPdxMeshStandard"
	#PixelShader = "PixelConstructionOpaque"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	Defines = { BLEND_TO_DIFFUSE_ALPHA CONSTRUCTION_DONE }
}
Effect AlphaBlendNoDepth_00ConstructionAlphaBlend
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	defines = { BLEND_TO_DIFFUSE_ALPHA }
}
Effect AlphaBlendNoDepth_00ConstructionSkinned
{
	VertexShader = "VertexPdxMeshStandard"
	#PixelShader = "PixelConstructionOpaque"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	defines = { BLEND_TO_DIFFUSE_ALPHA CONSTRUCTION_DONE }
}
Effect AlphaBlendNoDepth_00ConstructionAlphaBlendSkinned
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	defines = { BLEND_TO_DIFFUSE_ALPHA }
}


Effect PdxMeshTerraAlphaTest
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "ADD_COLOR" "EMISSIVE"  "ALPHA_TEST" "RECOLOR_EMISSIVE" }
}

Effect PdxMeshTerraAlphaTestSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "ADD_COLOR" "EMISSIVE"  "ALPHA_TEST" "RECOLOR_EMISSIVE"  }
}

Effect PdxMeshPlanet
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "IS_PLANET" "EMISSIVE"  }
}

Effect PdxMeshPlanetSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "IS_PLANET" "EMISSIVE"  }
}

Effect PdxMeshAsteroid
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "EMISSIVE"  }
}

Effect PdxMeshAsteroidSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "EMISSIVE"  }
}

Effect PdxMeshPlanetEmissive
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "IS_PLANET" "NO_PLANET_EMISSIVE" "EMISSIVE"  }
}

Effect PdxMeshPlanetEmissiveSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	Defines = { "IS_PLANET" "NO_PLANET_EMISSIVE" "EMISSIVE"  }
}

Effect PdxMeshPlanetRings
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	RasterizerState = "RasterizerStateNoCulling"
	BlendState = "BlendStateAlphaBlendWriteAlpha"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "IS_PLANET" "IS_RING" }
}

Effect PdxMeshPlanetRingsSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	RasterizerState = "RasterizerStateNoCulling"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "IS_PLANET" "IS_RING" }
}

Effect PdxMeshAtmosphere
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAtmosphere"
	RasterizerState = "RasterizerStateBack"
	BlendState = "BlendStateAdditiveBlendNoAlpha"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "IS_PLANET" }
}

Effect PdxMeshAtmosphereSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshAtmosphere"
	RasterizerState = "RasterizerStateBack"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "IS_PLANET" }
}

Effect PdxMeshAtmosphereStar
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAtmosphereStar"
	RasterizerState = "RasterizerStateBack"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "IS_PLANET" "IS_STAR" }
}

Effect PdxMeshAtmosphereStarSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshAtmosphereStar"
	RasterizerState = "RasterizerStateBack"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "IS_PLANET "IS_STAR"" }
}

Effect PdxMeshStar
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStar"
	Defines = { "IS_STAR" }
}

Effect PdxMeshStarSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStar"
	Defines = { "IS_STAR" }
}

Effect PdxMeshNeutronStarShell
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStar"
	#RasterizerState = "RasterizerStateBack"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "IS_STAR" "IS_NEUTRON_STAR_SHELL" }
}

Effect PdxMeshNeutronStarShellSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStar"
	#RasterizerState = "RasterizerStateBack"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "IS_STAR" "IS_NEUTRON_STAR_SHELL" }
}


Effect PdxMeshClouds
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "IS_PLANET" "IS_CLOUDS"  }
}

Effect PdxMeshCloudsSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "IS_PLANET" "IS_CLOUDS"  }
}
Effect PdxMeshCloudsConstruction
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshInvisible"
}
Effect PdxMeshCloudsConstructionSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshInvisible"
}
Effect PdxMeshCloudsConstructionAlphaBlend
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshInvisible"
}
Effect PdxMeshCloudsConstructionAlphaBlendSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshInvisible"
}

Effect PdxMeshRings
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "IS_PLANET" "IS_RING"  }
}

Effect PdxMeshRingsSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "IS_PLANET" "IS_RING"  }
}

Effect PdxMeshAlphaBlendPlanet
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshStandard"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "IS_PLANET" "EMISSIVE"   }
}

Effect PdxMeshAlphaBlendPlanetSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	BlendState = "BlendStateAlphaBlend";
	Defines = { "IS_PLANET" "EMISSIVE"   }
}

Effect PdxMeshAlphaBlendNoZWriteSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend";
}

Effect PdxMeshPortrait
{
	VertexShader = "VertexPdxMeshPortraitStandard"
	PixelShader = "PixelPdxMeshPortrait"
	BlendState = "BlendStateAlphaBlendWriteAlpha";
	DepthStencilState = "DepthStencilNoZ"
	RasterizerState = "RasterizerStateNoCulling"
}

Effect PdxMeshPortraitSkinned
{
	VertexShader = "VertexPdxMeshPortraitStandardSkinned"
	PixelShader = "PixelPdxMeshPortrait"
	BlendState = "BlendStateAlphaBlendWriteAlpha";
	DepthStencilState = "DepthStencilNoZ"
	RasterizerState = "RasterizerStateNoCulling"
}

Effect PdxMeshPortraitClothes
{
	VertexShader = "VertexPdxMeshPortraitStandard"
	PixelShader = "PixelPdxMeshPortrait"
	BlendState = "BlendStateAlphaBlendWriteAlpha";
	DepthStencilState = "DepthStencilNoZ"
	RasterizerState = "RasterizerStateNoCulling"
	Defines = { "CLOTHES" }
}

Effect PdxMeshPortraitClothesSkinned
{
	VertexShader = "VertexPdxMeshPortraitStandardSkinned"
	PixelShader = "PixelPdxMeshPortrait"
	BlendState = "BlendStateAlphaBlendWriteAlpha";
	DepthStencilState = "DepthStencilNoZ"
	RasterizerState = "RasterizerStateNoCulling"
	Defines = { "CLOTHES" }
}

Effect PdxMeshPortraitHair
{
	VertexShader = "VertexPdxMeshPortraitStandard"
	PixelShader = "PixelPdxMeshPortrait"
	BlendState = "BlendStateAlphaBlendWriteAlpha";
	DepthStencilState = "DepthStencilNoZ"
	RasterizerState = "RasterizerStateNoCulling"
	Defines = { "HAIR" }
}

Effect PdxMeshPortraitHairSkinned
{
	VertexShader = "VertexPdxMeshPortraitStandardSkinned"
	PixelShader = "PixelPdxMeshPortrait"
	BlendState = "BlendStateAlphaBlendWriteAlpha";
	DepthStencilState = "DepthStencilNoZ"
	RasterizerState = "RasterizerStateNoCulling"
	Defines = { "HAIR" }
}

Effect PdxMeshFrontendBackground
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshFrontendBackground"
	BlendState = "BlendStateAlphaBlendWriteAlpha";
	DepthStencilState = "DepthStencilNoZ"
	RasterizerState = "RasterizerStateNoCulling"
}

Effect PdxMeshFrontendBackgroundSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshFrontendBackground"
	BlendState = "BlendStateAlphaBlendWriteAlpha";
	DepthStencilState = "DepthStencilNoZ"
	RasterizerState = "RasterizerStateNoCulling"
}

Effect PdxMeshSimple
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshSimple"
}

Effect PdxMeshSimpleSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshSimple"
}

## ------------- SHADOWS UNUSED ------------------

Effect PdxMeshTerraShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshTerraSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshTerraAlphaBlendShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshTerraAlphaBlendSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AlphaBlend_00Shadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AlphaBlend_00SkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}
Effect AlphaBlendNoDepth_00Shadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AlphaBlendNoDepth_00SkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshTerraAlphaTestShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshTerraAlphaTestSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshPlanetShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" }
}

Effect PdxMeshPlanetSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" }
}

Effect PdxMeshAsteroidShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshAsteroidSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshPlanetEmissiveShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" }
}

Effect PdxMeshPlanetEmissiveSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" }
}

Effect PdxMeshPlanetRingsShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" "IS_RING" }
}

Effect PdxMeshPlanetRingsSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" "IS_RING" }
}

Effect PdxMeshAtmosphereShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	RasterizerState = "RasterizerStateBack"
	Defines = { "IS_SHADOW" "IS_PLANET" }
}

Effect PdxMeshAtmosphereSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	RasterizerState = "RasterizerStateBack"
	Defines = { "IS_SHADOW" "IS_PLANET" "" }
}

Effect PdxMeshAtmosphereStarShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	RasterizerState = "RasterizerStateBack"
	Defines = { "IS_SHADOW" "IS_PLANET" "IS_STAR" }
}

Effect PdxMeshAtmosphereStarSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	RasterizerState = "RasterizerStateBack"
	Defines = { "IS_SHADOW" "IS_PLANET" "IS_STAR" }
}

Effect PdxMeshStarShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_STAR" }
}

Effect PdxMeshStarSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_STAR" }
}

Effect PdxMeshNeutronStarShellShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_STAR" "IS_NEUTRON_STAR_SHELL" }
}

Effect PdxMeshNeutronStarShellSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_STAR" "IS_NEUTRON_STAR_SHELL" }
}


Effect PdxMeshCloudsShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" "IS_CLOUDS" }
}

Effect PdxMeshCloudsSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" "IS_CLOUDS" }
}

Effect PdxMeshRingsShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" "IS_RING" }
}

Effect PdxMeshRingsSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" "IS_RING" }
}

Effect PdxMeshAlphaBlendPlanetShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshAlphaTestShadow"
	BlendState = "BlendStateAlphaShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" }
}

Effect PdxMeshAlphaBlendPlanetSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshAlphaTestShadow"
	BlendState = "BlendStateAlphaShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" }
}

Effect PdxMeshAlphaBlendNoZWriteSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshAlphaTestShadow"
	BlendState = "BlendStateAlphaShadow"
	Defines = { "IS_SHADOW" }
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect PdxMeshHealthbar
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshProgressBar"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	RasterizerState = "RasterizerStateNoCulling"
	Defines = { "HEALTH_BAR" "COLORED"}
}

Effect PdxMeshHealthbarSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshProgressBar"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	RasterizerState = "RasterizerStateNoCulling"
	Defines = { "HEALTH_BAR" "COLORED" }
}

Effect PdxMeshHealthbarShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}

Effect PdxMeshHealthbarSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}

Effect PdxMeshPortraitShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshPortraitSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshPortraitClothesShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshPortraitClothesSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshPortraitHairShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshPortraitHairSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshFrontendBackgroundShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshFrontendBackgroundSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshSimpleShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshSimpleSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshProgressBar
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshProgressBar"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect PdxMeshProgressBarSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshProgressBar"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect PdxMeshProgressBarShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}

Effect PdxMeshProgressBarSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}

Effect PdxMeshProgressBarColored
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshProgressBar"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "PROGRESS_BAR" "COLORED" }
}

Effect PdxMeshProgressBarColoredSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshProgressBar"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "PROGRESS_BAR" "COLORED" }
}

Effect PdxMeshProgressBarColoredShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}

Effect PdxMeshProgressBarColoredSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}

Effect PdxMeshMapIcon
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshMapIcon"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
}
Effect PdxMeshMapIconSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshMapIcon"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
}
Effect PdxMeshMapIconShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}
Effect PdxMeshMapIconSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}

Effect PdxMeshMapIconColor
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshMapIcon"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "COLORED" }
}
Effect PdxMeshMapIconColorSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshMapIcon"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "COLORED" }
}
Effect PdxMeshMapIconColorShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}
Effect PdxMeshMapIconColorSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}


Effect PdxMeshNavigationButton
{
	VertexShader = "VertexPdxMeshNavigationButton"
	PixelShader = "PixelPdxMeshNavigationButton"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
}
Effect PdxMeshNavigationButtonSkinned
{
	VertexShader = "VertexPdxMeshNavigationButton"
	PixelShader = "PixelPdxMeshNavigationButton"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
}
Effect PdxMeshNavigationButtonShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}
Effect PdxMeshNavigationButtonSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
}

Effect PdxMeshShieldFlipBook
{
	VertexShader = "VertexPdxMeshShieldHitEffect"
	PixelShader = "PixelPdxMeshShieldFlipBook"
	BlendState = "BlendStateAdditiveBlendNoAlpha"
	DepthStencilState = "DepthStencilNoZWrite"
	RasterizerState = "RasterizerStateNoCulling"
}

Effect PdxMeshShieldFlipBookSkinned
{
	VertexShader = "VertexPdxMeshShieldHitEffectSkinned"
	PixelShader = "PixelPdxMeshShieldFlipBook"
	BlendState = "BlendStateAdditiveBlendNoAlpha"
	DepthStencilState = "DepthStencilNoZWrite"
	RasterizerState = "RasterizerStateNoCulling"
}

Effect PdxMeshShieldFlipBookShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshShieldFlipBookShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}


Effect PdxMeshShieldUVStrech
{
	VertexShader = "VertexPdxMeshShieldHitEffect"
	PixelShader = "PixelPdxMeshShieldUVStretch"
	BlendState = "BlendStateAdditiveBlendNoAlpha"
	DepthStencilState = "DepthStencilNoZWrite"
	RasterizerState = "RasterizerStateNoCulling"
}

Effect PdxMeshShieldUVStrechSkinned
{
	VertexShader = "VertexPdxMeshShieldHitEffectSkinned"
	PixelShader = "PixelPdxMeshStandard"
	BlendState = "BlendStateAdditiveBlendNoAlpha"
	DepthStencilState = "DepthStencilNoZWrite"
	RasterizerState = "RasterizerStateNoCulling"
}

Effect PdxMeshShieldUVStrechShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshShieldUVStrechShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshShip
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshShip"
	Defines = {
		"PDX_IMPROVED_BLINN_PHONG"
		"RIM_LIGHT"
	}
}

Effect PdxMeshShipSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshShip"
	Defines = {
		"PDX_IMPROVED_BLINN_PHONG"
		"RIM_LIGHT"
	}
}

Effect PdxMeshShipShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshShipSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}
Effect PdxMeshShipDiffuseEmissive
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshShip"
	Defines = {
		"PDX_IMPROVED_BLINN_PHONG"
		"RIM_LIGHT"
		"USE_EMPIRE_COLOR_MASK_FOR_EMISSIVE"
	}
}

Effect PdxMeshShipDiffuseEmissiveSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshShip"
	Defines = {
		"PDX_IMPROVED_BLINN_PHONG"
		"RIM_LIGHT"
		"USE_EMPIRE_COLOR_MASK_FOR_EMISSIVE"
	}
}

Effect PdxMeshShipDiffuseEmissiveShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW"
				"USE_EMPIRE_COLOR_MASK_FOR_EMISSIVE"
	}
}

Effect PdxMeshShipDiffuseEmissiveSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW"
				"USE_EMPIRE_COLOR_MASK_FOR_EMISSIVE"
	}
}

Effect PdxMeshShipDiffuseEmissiveAlpha
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshShip"
	BlendState = "BlendStateAlphaBlend";
	Defines = {
		"PDX_IMPROVED_BLINN_PHONG"
		"RIM_LIGHT"
		"USE_EMPIRE_COLOR_MASK_FOR_EMISSIVE"
		"NO_ALPHA_MULTIPLIED_EMISSIVE"
	}
}

Effect PdxMeshShipDiffuseEmissiveAlphaSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshShip"
	BlendState = "BlendStateAlphaBlend";
	Defines = {
		"PDX_IMPROVED_BLINN_PHONG"
		"RIM_LIGHT"
		"USE_EMPIRE_COLOR_MASK_FOR_EMISSIVE"
		"NO_ALPHA_MULTIPLIED_EMISSIVE"
	}
}

Effect PdxMeshShipDiffuseEmissiveAlphaShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshShipDiffuseEmissiveAlphaSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}
Effect PdxMeshExtraDimensionalShip
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshExtraDimensionalShip"
	BlendState = "BlendStateAlphaBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect PdxMeshExtraDimensionalShipSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshExtraDimensionalShip"
	BlendState = "BlendStateAlphaBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect PdxMeshExtraDimensionalShipShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshExtraDimensionalShipSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AotPlanetShieldDM
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelAotPlanetShieldDM"
	BlendState = "BlendStateAlphaBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect AotPlanetShieldDMSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelAotPlanetShieldDM"
	BlendState = "BlendStateAlphaBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect AotPlanetShieldDMShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AotPlanetShieldDMSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AotPlanetShieldAE
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelAotPlanetShieldAE"
	BlendState = "BlendStateAlphaBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect AotPlanetShieldAESkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelAotPlanetShieldAE"
	BlendState = "BlendStateAlphaBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect AotPlanetShieldAEShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AotPlanetShieldAESkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AotPlanetShieldStellarite
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelAotPlanetShieldStellarite"
	BlendState = "BlendStateAlphaBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect AotPlanetShieldStellariteSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelAotPlanetShieldStellarite"
	BlendState = "BlendStateAlphaBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect AotPlanetShieldStellariteShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AotPlanetShieldStellariteSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AotPlanetShieldPE
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelAotPlanetShieldPE"
	BlendState = "BlendStateAlphaBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect AotPlanetShieldPESkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelAotPlanetShieldPE"
	BlendState = "BlendStateAlphaBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
}

Effect AotPlanetShieldPEShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AotPlanetShieldPESkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect PdxMeshStandardConstruction
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstructionOpaque"
}
Effect PdxMeshStandardConstructionAlphaBlend
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
}

Effect PdxMeshStandardConstructionSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
}
Effect PdxMeshStandardConstructionAlphaBlendSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelConstructionOpaque"
}

Effect PdxMeshShipConstruction
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstructionOpaque"
}

Effect PdxMeshShipConstructionAlphaBlend
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
}

Effect PdxMeshShipConstructionSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelConstructionOpaque"
}

Effect PdxMeshShipConstructionAlphaBlendSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
}

Effect PdxMeshTerraConstruction
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstructionOpaque"
	
	#RasterizerState = "RasterizerStateNoCulling"
}
Effect PdxMeshTerraConstructionAlphaBlend
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
}

Effect PdxMeshTerraConstructionSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelConstructionOpaque"
}
Effect PdxMeshTerraConstructionAlphaBledSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
}
Effect PdxMeshTerraAlphaBlendConstruction
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	defines = { BLEND_TO_DIFFUSE_ALPHA CONSTRUCTION_DONE }
}
Effect PdxMeshTerraAlphaBlendConstructionAlphaBlend	#//naming is weird here.. PdxMeshTerraAlphaBlend is the standard name, game appends "ConstructionAlphaBlend" for a certain camera index
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	defines = { BLEND_TO_DIFFUSE_ALPHA }
}

Effect PdxMeshTerraAlphaBlendConstructionSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	defines = { BLEND_TO_DIFFUSE_ALPHA CONSTRUCTION_DONE }
}
Effect PdxMeshTerraAlphaBlendConstructionAlphaBlendSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelConstruction"
	DepthStencilState = "DepthStencilNoZWrite"
	BlendState = "BlendStateAlphaBlend"
	defines = { BLEND_TO_DIFFUSE_ALPHA }
}

Effect PdxMeshCircleGradient
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshCircleGradient"
	BlendState = "BlendStateAlphaBlend"
	DepthStencilState = "DepthStencilNoZWrite"
}
Effect PdxMeshCircleGradientShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}
Effect PdxMeshBlackHole
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshBlackHole"
	#BlendState = "BlendStateAlphaBlend"
	#DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "BLACK_HOLE" }
}

Effect PdxMeshBlackHoleSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshBlackHole"
	#BlendState = "BlendStateAlphaBlend"
	#DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "BLACK_HOLE" }
}
Effect PdxMeshBlackHoleShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "ADD_COLOR"  "IGNORE_POINT_LIGHTS" }
}

Effect PdxMeshBlackHoleSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "ADD_COLOR" "EMISSIVE"  "IGNORE_POINT_LIGHTS" }
}
Effect PdxMeshBlackHoleBillboard
{
	VertexShader = "VertexPdxMeshBillboard"
	PixelShader = "PixelPdxMeshAdditive"
	BlendState = "BlendStateAdditiveBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "BLACK_HOLE" "ANIMATE_UV" }
}

Effect PdxMeshBlackHoleBillboardSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshStandard"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "BLACK_HOLE" "ANIMATE_UV" }
}
Effect PdxMeshBlackHoleBillboardShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "BLACK_HOLE" }
}

Effect PdxMeshBlackHoleBillboardSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "BLACK_HOLE" }
}

Effect PdxMeshDimensionalPortal
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshDimensionalPortal"
	BlendState = "BlendStateAlphaBlend"
	#DepthStencilState = "DepthStencilNoZWrite"
	#RasterizerState = "RasterizerStateNoCulling"
}

Effect PdxMeshDimensionalPortalSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshDimensionalPortal"
	BlendState = "BlendStateAlphaBlend"
	#DepthStencilState = "DepthStencilNoZWrite"
	#RasterizerState = "RasterizerStateNoCulling"
}
Effect PdxMeshDimensionalPortalShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
}

Effect PdxMeshDimensionalPortalSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
}

Effect AlphaBlendNoDepth
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshShip"
	BlendState = "BlendStateAlphaBlend";
	DepthStencilState = DepthStencilNoZWrite
	Defines = { "NO_ALPHA_MULTIPLIED_EMISSIVE" }
}

Effect AlphaBlendNoDepthSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelPdxMeshShip"
	BlendState = "BlendStateAlphaBlend";
	DepthStencilState = DepthStencilNoZWrite
	Defines = { "NO_ALPHA_MULTIPLIED_EMISSIVE" }
}
Effect AlphaBlendNoDepthShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect AlphaBlendNoDepthSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}






































Effect OmniMeshShip
{
	VertexShader = "VertexPdxMeshStandard"
    PixelShader = "PixelOmniMeshShip"
	Defines = {
		"PDX_IMPROVED_BLINN_PHONG"
		"RIM_LIGHT"
	}
}

Effect OmniMeshShipSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
    PixelShader = "PixelOmniMeshShip"
	Defines = {
		"PDX_IMPROVED_BLINN_PHONG"
		"RIM_LIGHT"
	}
}

Effect OmniMeshShipShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshShipSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshShipRecolor
{
    VertexShader = "VertexPdxMeshStandard"
    PixelShader = "PixelOmniMeshShip"
    Defines = {
		"ANIMATE_UV"
        "PDX_IMPROVED_BLINN_PHONG"
        "RIM_LIGHT"
        "RECOLOR_EMISSIVE"
    }
}

Effect OmniMeshShipRecolorShadow
{
    VertexShader = "VertexPdxMeshStandardShadow"
    PixelShader = "PixelPdxMeshStandardShadow"
    Defines = { "IS_SHADOW" }
}

Effect OmniMeshShipRecolorSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
    PixelShader = "PixelOmniMeshShip"
    Defines = {
        "PDX_IMPROVED_BLINN_PHONG"
        "RIM_LIGHT"
        "RECOLOR_EMISSIVE"
    }
}

Effect OmniMeshShipRecolorSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
    PixelShader = "PixelPdxMeshStandardShadow"
    Defines = { "IS_SHADOW" }
}

Effect OmniMeshShipAlpha
{
    VertexShader = "VertexPdxMeshStandard"
    PixelShader = "PixelOmniMeshShip"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "DISSOLVE" }
}

Effect OmniMeshShipAlphaShadow
{
    VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshShipAlphaSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
    PixelShader = "PixelOmniMeshShip"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "DISSOLVE" }
}

Effect OmniMeshShipAlphaSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshMegaAlpha
{
    VertexShader = "VertexPdxMeshStandard"
    PixelShader = "PixelPdxMeshStandard"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "DISSOLVE" }
}

Effect OmniMeshMegaAlphaShadow
{
    VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshMegaAlphaSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
    PixelShader = "PixelPdxMeshStandard"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "DISSOLVE" }
}

Effect OmniMeshMegaAlphaSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshED
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelOmniMeshED"
	BlendState = "BlendStateAdditiveBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
    Defines = {
        "PDX_IMPROVED_BLINN_PHONG"
        "RIM_LIGHT"
        "RECOLOR_EMISSIVE"
		"DISSOLVE"
    }
}

Effect OmniMeshEDSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelOmniMeshED"
	BlendState = "BlendStateAdditiveBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
    Defines = {
        "PDX_IMPROVED_BLINN_PHONG"
        "RIM_LIGHT"
        "RECOLOR_EMISSIVE"
		"DISSOLVE"
    }
}

Effect OmniMeshEDShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshEDSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshEDSphere
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelOmniMeshEDSphere"
	BlendState = "BlendStateAdditiveBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
    Defines = {
        "PDX_IMPROVED_BLINN_PHONG"
        "RIM_LIGHT"
        "RECOLOR_EMISSIVE"
		"DISSOLVE"
    }
}

Effect OmniMeshEDSphereSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelOmniMeshEDSphere"
	BlendState = "BlendStateAdditiveBlend"
	RasterizerState = "RasterizerStateNoCulling"
	DepthStencilState = "DepthStencilNoZWrite"
    Defines = {
        "PDX_IMPROVED_BLINN_PHONG"
        "RIM_LIGHT"
        "RECOLOR_EMISSIVE"
		"DISSOLVE"
    }
}

Effect OmniMeshEDSphereShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshEDSphereSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshNoShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshWhiteHole
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelOmniMeshWhiteHole"
	#BlendState = "BlendStateAlphaBlend"
	#DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "BLACK_HOLE" }
}

Effect OmniMeshWhiteHoleSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
	PixelShader = "PixelOmniMeshWhiteHole"
	#BlendState = "BlendStateAlphaBlend"
	#DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "BLACK_HOLE" }
}
Effect OmniMeshWhiteHoleShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "ADD_COLOR"  "IGNORE_POINT_LIGHTS" }
}

Effect OmniMeshWhiteHoleSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "ADD_COLOR" "EMISSIVE"  "IGNORE_POINT_LIGHTS" }
}


Effect OmniMeshShipAnimateUV
{
	VertexShader = "VertexPdxMeshStandard"
    PixelShader = "PixelOmniMeshShip"
	Defines = {
		"PDX_IMPROVED_BLINN_PHONG"
		"RIM_LIGHT"
		"ANIMATE_NORMAL"
		"ANIMATE_SPECULAR"
	}
}

Effect OmniMeshShipAnimateUVSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
    PixelShader = "PixelOmniMeshShip"
	Defines = {
		"PDX_IMPROVED_BLINN_PHONG"
		"RIM_LIGHT"
		"ANIMATE_NORMAL"
		"ANIMATE_SPECULAR"
	}
}

Effect OmniMeshShipAnimateUVShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshShipAnimateUVSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshShipAnimateUVAlpha
{
	VertexShader = "VertexPdxMeshStandard"
    PixelShader = "PixelOmniMeshShip"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = {
		"RECOLOR_EMISSIVE"
		"DISSOLVE"
		"ANIMATE_NORMAL"
		"ANIMATE_SPECULAR"
	}
}

Effect OmniMeshShipAnimateUVAlphaSkinned
{
	VertexShader = "VertexPdxMeshStandardSkinned"
    PixelShader = "PixelOmniMeshShip"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = {
		"RECOLOR_EMISSIVE"
		"DISSOLVE"
		"ANIMATE_NORMAL"
		"ANIMATE_SPECULAR"
	}
}

Effect OmniMeshShipAnimateUVAlphaShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}

Effect OmniMeshShipAnimateUVAlphaSkinnedShadow
{
	VertexShader = "VertexPdxMeshStandardSkinnedShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" }
}







Effect PdxMeshPlanetRingsRS
{
	VertexShader = "VertexPdxMeshStandard"
	PixelShader = "PixelPdxMeshAdditive"
	RasterizerState = "RasterizerStateNoCulling"
	BlendState = "BlendStateAdditiveBlend"
	DepthStencilState = "DepthStencilNoZWrite"
	Defines = { "IS_PLANET" "IS_RING" }
}

Effect PdxMeshPlanetRingsRSShadow
{
	VertexShader = "VertexPdxMeshStandardShadow"
	PixelShader = "PixelPdxMeshStandardShadow"
	Defines = { "IS_SHADOW" "IS_PLANET" "IS_RING" }
}

BlendState BlendStateAdditiveBlendRS
{
	BlendEnable = yes
	SourceBlend = "SRC_ALPHA"
	DestBlend = "ONE"
	WriteMask = "RED|GREEN|BLUE|ALPHA"
}

DepthStencilState DepthStencilNoZWriteRS
{
	DepthEnable = yes
	DepthWriteMask = "DEPTH_WRITE_ZERO"
}

RasterizerState RasterizerStateNoCullingRS
{
	CullMode = "CULL_NONE"
}








Effect PdxMeshShipHalo
{
    VertexShader = "VertexPdxMeshStandard"
    PixelShader = "PixelPdxMeshShip"
    Defines = {
        "PDX_IMPROVED_BLINN_PHONG"
        "RIM_LIGHT"
            "ALPHA_TEST"
    }
}
Effect PdxMeshPlanetHalo
{
    VertexShader = "VertexPdxMeshStandard"
    PixelShader = "PixelPdxMeshShip"
    Defines = { "ALPHA_TEST" "NO_PLANET_EMISSIVE" "EMISSIVE" "PDX_IMPROVED_BLINN_PHONG" }
}
Effect PdxMeshNavigationButtonGate
{
    VertexShader = "VertexPdxMeshStandard"
    PixelShader = "PixelPdxMeshShip"
    Defines = {
        "PDX_IMPROVED_BLINN_PHONG"
        #"RIM_LIGHT"
    }
    #DepthStencilState = "DepthStencilNoZWrite"
}
