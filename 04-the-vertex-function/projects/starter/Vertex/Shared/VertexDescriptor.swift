import MetalKit

extension MTLVertexDescriptor {
    static var defaultLayout: MTLVertexDescriptor {
        let vertexDescriptor = MTLVertexDescriptor()
        
        vertexDescriptor.attributes[0].format = .float3
        vertexDescriptor.attributes[0].offset = 0
        vertexDescriptor.attributes[0].bufferIndex = 0
        
        vertexDescriptor.attributes[1].format = .float3
        vertexDescriptor.attributes[1].offset = 0
        vertexDescriptor.attributes[1].bufferIndex = 1
        
//        let stride = MemoryLayout<Float>.stride * 3
        vertexDescriptor.layouts[0].stride = MemoryLayout<Float>.stride * 3
        vertexDescriptor.layouts[1].stride = MemoryLayout<simd_float3>.stride
        
        return vertexDescriptor
    }
}
