<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>default_polygon</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>Default Polygon</Title>
      <Abstract>A sample style that draws a polygon</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering polygons -->
      <FeatureTypeStyle>
        <Rule>
          <Name>rule1</Name>
          <Title>Gray Polygon with Black Outline</Title>
          <Abstract>A polygon with a gray fill and a 1 pixel black outline</Abstract>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#AAAAAA</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#ff0000</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
          
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="https://icons.iconarchive.com/icons/paomedia/small-n-flat/24/map-marker-icon.png" />
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>
                <ogc:Literal>20</ogc:Literal>
              </Size>
            </Graphic>

          </PointSymbolizer>
          
         <TextSymbolizer>   
           <CssParameter name="font-size">100m</CssParameter>
         <Label>
           <ogc:PropertyName>name</ogc:PropertyName>
         </Label>
         <LabelPlacement>
            	<PointPlacement>
                 	<AnchorPoint>
                   		<AnchorPointX>0.0</AnchorPointX>
                   		<AnchorPointY>0.0</AnchorPointY>
                 	</AnchorPoint>
                 	<Displacement>
                  		<DisplacementX>10</DisplacementX>
                  		<DisplacementY>-6</DisplacementY>
                	</Displacement>
            	</PointPlacement>
          	</LabelPlacement>
           <CssParameter name="font-size">
         <ogc:Function name="Categorize">
           <!-- Value to transform -->
           <ogc:Function name="env">
             <ogc:Literal>wms_scale_denominator</ogc:Literal>
           </ogc:Function>
           <!-- Output values and thresholds -->
           <!-- Ranges: -->
           <!-- [scale <= 300, font 12] -->
           <!-- [scale 300 - 2500, font 10] -->
           <!-- [scale > 2500, font 8] -->
           <ogc:Literal>12</ogc:Literal>
           <ogc:Literal>300</ogc:Literal>
           <ogc:Literal>10</ogc:Literal>
           <ogc:Literal>2500</ogc:Literal>
           <ogc:Literal>8</ogc:Literal>
         </ogc:Function>
       </CssParameter>
       </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
