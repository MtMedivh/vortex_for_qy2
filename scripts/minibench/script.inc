// *****************************************************************************************
// Classes
// *****************************************************************************************

class FrameBufferObjects
{
  FrameBuffer@ FB;
  RenderTarget@ RT;
  DepthStencil@ DS;
  Surface@ MainSurface;
};

// *****************************************************************************************
// Test
// *****************************************************************************************

void bindClear( FrameBufferObjects @ FB, uint32 flags = CLEAR_FLAGS_DEPTH | CLEAR_FLAGS_STENCIL, float depth = 1.f, uint8 stencil = 0 )
{
	bindFrameBuffer( FB.FB );
	clear( 245.f / 255.f, 135.f / 255.f, 10.f / 255.f, 1.f, flags, depth, stencil );
}

void bindClear( FrameBuffer @ FB, uint32 flags = CLEAR_FLAGS_DEPTH | CLEAR_FLAGS_STENCIL, float depth = 1.f, uint8 stencil = 0 )
{
	bindFrameBuffer( FB );
	clear( 245.f / 255.f, 135.f / 255.f, 10.f / 255.f, 1.f, flags, depth, stencil );
}

void clear( uint32 flags = CLEAR_FLAGS_DEPTH | CLEAR_FLAGS_STENCIL, float depth = 1.f, uint8 stencil = 0 )
{
	clear( 245.f / 255.f, 135.f / 255.f, 10.f / 255.f, 1.f, flags, depth, stencil );
}

void renderLayer( Layer @+ layer )
{
	renderLayer( layer, 1 );
}

void beginTest( const string &in name )
{
	beginTest( name, 0 );
}

// *****************************************************************************************
// Geometry
// *****************************************************************************************

Geometry@ createFullscreen(uint32 attributeFlags = ATTRIBUTE_POSITION4, uint32 nTexCoords = 0, DATA_FORMAT texcoordFormat = DATA_FORMAT_R32G32_FLOAT, bool index32b = true, uint32 nbLayers=1)
{
	Geometry@ geom = createGeometry(attributeFlags, nTexCoords, texcoordFormat, index32b);
	geom.addFullscreenTriangle(nbLayers);
	return geom;
}

Geometry@ createFullscreenQuad(uint32 attributeFlags = ATTRIBUTE_POSITION4, uint32 nTexCoords = 0, DATA_FORMAT texcoordFormat = DATA_FORMAT_R32G32_FLOAT, bool index32b = true)
{
	Geometry@ geom = createGeometry(attributeFlags, nTexCoords, texcoordFormat, index32b);
	geom.addQuad( GEOMETRY_LIST, 0.0f, 0.0f, 1.0f, 1.0f, 1, 1 );
	return geom;
}

Geometry@ createDegenerate()
{
	Geometry@ geom = createGeometry(ATTRIBUTE_POSITION4, 0, DATA_FORMAT_R32G32_FLOAT, true);
	geom.addQuad( GEOMETRY_LIST_DEGENERATE, 0.0f, 0.0f, 1.0f, 1.0f, 1, 1 );
	return geom;
}

// *****************************************************************************************
// Layer
// *****************************************************************************************

Layer@ createDefaultLayer(Pipeline@ pipeline, Geometry@ geometry, CULL_MODE cullMode = CULL_BACK, DEFAULT_BLEND blend = DEFAULT_BLEND_OPAQUE, DEFAULT_DEPTH depth = DEPTH_TEST_WRITE,
						  Surface@ t0 = null, Surface@ t1 = null, Surface@ t2 = null, Surface@ t3 = null, Surface@ t4 = null, Surface@ t5 = null, Surface@ t6 = null, Surface@ t7 = null,
						  SamplerState@ sampler = null)
{
	Layer@ newLayer = createLayer(pipeline, geometry);
	newLayer.attachRasterizerState( createRasterizerState(cullMode) );
	newLayer.attachBlendState( createBlendState(blend) );
	newLayer.attachDepthStencilState( createDepthStencilState(depth) );
	
	SamplerState@ realSampler = sampler is null? createSamplerState( FILTER_MIN_MAG_LINEAR_MIP_POINT, TEXTURE_ADDRESS_WRAP ): sampler;
	//SamplerState@ sampler = createSamplerState( FILTER_MIN_MAG_LINEAR_MIP_POINT, TEXTURE_ADDRESS_WRAP );
	if(t0 !is null) newLayer.attachTexture( 0, t0, realSampler);
	if(t1 !is null) newLayer.attachTexture( 1, t1, realSampler);
	if(t2 !is null) newLayer.attachTexture( 2, t2, realSampler);
	if(t3 !is null) newLayer.attachTexture( 3, t3, realSampler);
	if(t4 !is null) newLayer.attachTexture( 4, t4, realSampler);
	if(t5 !is null) newLayer.attachTexture( 5, t5, realSampler);
	if(t6 !is null) newLayer.attachTexture( 6, t6, realSampler);
	if(t7 !is null) newLayer.attachTexture( 7, t7, realSampler);
	  
	return newLayer;
}

Layer@ createDefaultLayer(string shaderfile, Geometry@ geometry, CULL_MODE cullMode = CULL_BACK, DEFAULT_BLEND blend = DEFAULT_BLEND_OPAQUE, DEFAULT_DEPTH depth = DEPTH_TEST_WRITE,
						  Surface@ t0 = null, Surface@ t1 = null, Surface@ t2 = null, Surface@ t3 = null, Surface@ t4 = null, Surface@ t5 = null, Surface@ t6 = null, Surface@ t7 = null)
{
  Pipeline@ pipeline = createPipelineFromFile( shaderfile, shaderfile );
	return createDefaultLayer(pipeline, geometry, cullMode, blend, depth, t0, t1, t2, t3, t4, t5, t6, t7);
}

// *****************************************************************************************
// FrameBuffer
// *****************************************************************************************

FrameBufferObjects@ createFrameBuffer(uint32 width, uint32 height, DATA_FORMAT colour, DATA_FORMAT depth)
{
	FrameBufferObjects FBO;

	if(colour != DATA_FORMAT_UNKNOWN)
		@FBO.RT = createRenderTarget( width, height, colour, true );
	if(depth != DATA_FORMAT_UNKNOWN)
		@FBO.DS = createDepthStencil( width, height, depth, colour == DATA_FORMAT_UNKNOWN );
  
	if(FBO.RT is null && FBO.DS is null)
		return null;

	if(FBO.RT !is null)
		@FBO.MainSurface = FBO.RT;
	else
		@FBO.MainSurface = FBO.DS;
			
	@FBO.FB = createFrameBuffer( FBO.DS, FBO.RT );
	return @FBO; 
}

// *****************************************************************************************
// RasterizerState
// *****************************************************************************************

RasterizerState@ createRasterizerState()
{
	RASTERIZER_DESC desc;
	return createRasterizerState( desc );
}
	
RasterizerState@ createRasterizerState( CULL_MODE cullMode = CULL_BACK, int32 depthBias = 0, float depthBiasClamp = 0.f, uint32 scissorEnable = FALSE )
{
	RASTERIZER_DESC desc;
	desc.m_CullMode = cullMode;
	desc.m_DepthBias = depthBias;
	desc.m_DepthBiasClamp = depthBiasClamp;
	desc.m_ScissorEnable = scissorEnable;
	return createRasterizerState( desc );
}

// *****************************************************************************************
// SamplerState
// *****************************************************************************************

SamplerState@ createSamplerState()
{
	SAMPLER_DESC desc;
	return createSamplerState( desc );
}

SamplerState@ createSamplerState( FILTER filter, TEXTURE_ADDRESS_MODE addressU, TEXTURE_ADDRESS_MODE addressV, TEXTURE_ADDRESS_MODE addressW )
{
	SAMPLER_DESC desc;
	desc.m_Filter = filter;
	desc.m_AddressU = addressU;
	desc.m_AddressV = addressV;
	desc.m_AddressW = addressW;
	return createSamplerState( desc );
}

SamplerState@ createSamplerState( FILTER filter, TEXTURE_ADDRESS_MODE address )
{
	return createSamplerState( filter, address, address, address );
}

// *****************************************************************************************
// BlendState
// *****************************************************************************************

BlendState@ createBlendState( uint8 writeMask = COLOR_WRITE_ENABLE_ALL )
{
	BLEND_DESC desc;
	desc.m_RenderTarget0.m_RenderTargetWriteMask = writeMask;
	return createBlendState( desc );
}

BlendState@ createBlendState( BLEND srcBlend, BLEND destBlend = BLEND_ZERO, BLEND_OP blendOp = BLEND_OP_ADD, uint8 writeMask = COLOR_WRITE_ENABLE_ALL )
{
	BLEND_DESC desc;
	desc.m_RenderTarget0.m_SrcBlend = desc.m_RenderTarget0.m_SrcBlendAlpha = srcBlend;
	desc.m_RenderTarget0.m_DestBlend = desc.m_RenderTarget0.m_DestBlendAlpha = destBlend;
	desc.m_RenderTarget0.m_BlendOp = desc.m_RenderTarget0.m_BlendOpAlpha = blendOp;
	desc.m_RenderTarget0.m_BlendEnable = TRUE;
	desc.m_RenderTarget0.m_RenderTargetWriteMask = writeMask;
	return createBlendState( desc );
}

BlendState@ createBlendState( BLEND srcBlend, BLEND destBlend, BLEND_OP blendOp, BLEND srcBlendAlpha,
                              BLEND destBlendAlpha = BLEND_ZERO, BLEND_OP blendOpAlpha = BLEND_OP_ADD, uint8 writeMask = COLOR_WRITE_ENABLE_ALL )
{
	BLEND_DESC desc;
	desc.m_RenderTarget0.m_SrcBlend = srcBlend;
	desc.m_RenderTarget0.m_DestBlend = destBlend;
	desc.m_RenderTarget0.m_BlendOp = blendOp;
	desc.m_RenderTarget0.m_SrcBlendAlpha = srcBlendAlpha;
	desc.m_RenderTarget0.m_DestBlendAlpha = destBlendAlpha;
	desc.m_RenderTarget0.m_BlendOpAlpha = blendOpAlpha;
	desc.m_RenderTarget0.m_BlendEnable = TRUE;
	desc.m_RenderTarget0.m_RenderTargetWriteMask = writeMask;
	return createBlendState( desc );
}

enum DEFAULT_BLEND
{
  DEFAULT_BLEND_NOWRITE,
	DEFAULT_BLEND_OPAQUE,
	DEFAULT_BLEND_ADD,
	DEFAULT_BLEND_SUB,
	DEFAULT_BLEND_MUL,
	DEFAULT_BLEND_ALPHA,
	DEFAULT_BLEND_PREMULT_ALPHA
};

BlendState@ createBlendState( DEFAULT_BLEND blend, uint8 writeMask = COLOR_WRITE_ENABLE_ALL )
{
	switch( blend )
	{
	case DEFAULT_BLEND_NOWRITE:
		return createBlendState( 0 );	
	case DEFAULT_BLEND_OPAQUE:
		return createBlendState( writeMask );
	case DEFAULT_BLEND_ADD:
		return createBlendState( BLEND_ONE, BLEND_ONE, BLEND_OP_ADD, writeMask );
	case DEFAULT_BLEND_SUB:
		return createBlendState( BLEND_ONE, BLEND_ONE, BLEND_OP_SUBTRACT, writeMask );
	case DEFAULT_BLEND_MUL:
		return createBlendState( BLEND_DEST_COLOR, BLEND_ZERO, BLEND_OP_ADD, BLEND_DEST_ALPHA, BLEND_ZERO, BLEND_OP_ADD, writeMask );
	case DEFAULT_BLEND_ALPHA:
		return createBlendState( BLEND_SRC_ALPHA, BLEND_INV_SRC_ALPHA, BLEND_OP_ADD, writeMask );
	case DEFAULT_BLEND_PREMULT_ALPHA:
		return createBlendState( BLEND_ONE, BLEND_INV_SRC_ALPHA, BLEND_OP_ADD, writeMask );
	}
	return null;
}

// *****************************************************************************************
// DepthStencilState
// *****************************************************************************************

DepthStencilState@ createDepthStencilState( BOOL depthTestEnable = TRUE, DEPTH_WRITE_MASK depthWriteMask = DEPTH_WRITE_MASK_ALL )
{
	DEPTH_STENCIL_DESC desc;
	desc.m_DepthEnable = depthTestEnable;
	desc.m_DepthWriteMask = depthWriteMask;
	return createDepthStencilState( desc );
}

DepthStencilState@ createDepthStencilState( COMPARISON_FUNC depthFunc = COMPARISON_LESS, DEPTH_WRITE_MASK depthWriteMask = DEPTH_WRITE_MASK_ALL )
{
	DEPTH_STENCIL_DESC desc;
	desc.m_DepthFunc = depthFunc;
	desc.m_DepthWriteMask = depthWriteMask;
	return createDepthStencilState( desc );
}

enum DEFAULT_DEPTH
{
	DEPTH_TEST_WRITE,
	DEPTH_TEST_ONLY,
	DEPTH_PASS_WRITE,
	DEPTH_PASS_ONLY,
	DEPTH_FAIL_WRITE,
	DEPTH_FAIL_ONLY
};

DepthStencilState@ createDepthStencilState( DEFAULT_DEPTH depth )
{
	switch( depth )
	{
	case DEPTH_TEST_WRITE:
		return createDepthStencilState(COMPARISON_LESS, DEPTH_WRITE_MASK_ALL);
	case DEPTH_TEST_ONLY:
		return createDepthStencilState(COMPARISON_LESS, DEPTH_WRITE_MASK_ZERO);
	case DEPTH_PASS_WRITE:
		return createDepthStencilState(COMPARISON_ALWAYS, DEPTH_WRITE_MASK_ALL);
	case DEPTH_PASS_ONLY:
		return createDepthStencilState(COMPARISON_ALWAYS, DEPTH_WRITE_MASK_ZERO);
	case DEPTH_FAIL_WRITE:
		return createDepthStencilState(COMPARISON_NEVER, DEPTH_WRITE_MASK_ALL);
	case DEPTH_FAIL_ONLY:
		return createDepthStencilState(COMPARISON_NEVER, DEPTH_WRITE_MASK_ZERO);
	}
	return null;
}