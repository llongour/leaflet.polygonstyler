# WARNING - Generated by {fusen} from /dev/flat_leaflet.polygonstyler.Rmd: do not edit by hand

#' setLabel
#' 
#' Allow to use `setShapeLabel` function into a shiny app
#'
#' @return leaflet map object
#' @importFrom htmltools HTML tags
#' @export 
#'
#' @examples 
setLabel <-  function(){tags$head(
  tags$script(HTML(
    '
  window.LeafletWidget.methods.setLabel = function(category, layerId, label){
  var map = this;
  if (!layerId){
    return;
  } else if (!(typeof(layerId) === "object" && layerId.length)){ // in case a single layerid is given
    layerId = [layerId];
  }
  layerId.forEach(function(d,i){
    var layer = map.layerManager.getLayer(category, d);
    if (layer){ // or should this raise an error?
        // layer.unbindTooltip();
      // the object subsetting to get the integer array and casting to string is what I added
      layer.bindTooltip(label[i]);
      // layer.options.tooltip = label[i].toString()
    }
  });
};  
    '
  ))
)
}
