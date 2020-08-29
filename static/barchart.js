// Define SVG area dimensions
var svgWidth = 960;
var svgHeight = 500;

// Define the chart's margins as an object
var chartMargin = {
  top: 30,
  right: 30,
  bottom: 30,
  
  left: 50
};

// Define dimensions of the chart area
var chartWidth = svgWidth - chartMargin.left - chartMargin.right;
var chartHeight = svgHeight - chartMargin.top - chartMargin.bottom;

// Select body, append SVG area to it, and set the dimensions
var svg = d3.select("body")
  .append("svg")
  .attr("height", svgHeight)
  .attr("width", svgWidth);

 // Append a group to the SVG area and shift ('translate') it to the right and to the bottom
 var chartGroup = svg.append("g")
 .attr("transform", `translate(${chartMargin.left}, ${chartMargin.top})`);

 // Load data from KCPD_Crime_Data.csv
 d3.csv("NewCrimewithage2.csv").then(function(crimeData) {

 console.log(crimeData);

 // Cast the hours value to a number for each piece of tvData
//  crimeData.forEach(function(d) {
//   d.age = +d.age;
//  });

 // Configure a band scale for the horizontal axis with a padding of 0.1 (10%)
  //crimeData.map so you remember that it is the function to define a column or key
  var xBandScale = d3.scaleBand()
    .domain(crimeData.map(d => d.sex))
    .range([0, chartWidth])
    .padding(0.5);

  // Create a linear scale for the vertical axis.
  // d3.max it is like a map take a data out of the function and use like arry
  var yLinearScale = d3.scaleLinear()
  .domain([18, d3.max(crimeData, d => d.age)])
  .range([chartHeight, 0]);

  // Create two new functions passing our scales in as arguments
  // These will be used to create the chart's axes
  var bottomAxis = d3.axisBottom(xBandScale);
  var leftAxis = d3.axisLeft(yLinearScale).ticks(10);

  // Append two SVG group elements to the chartGroup area,
  // and create the bottom and left axes inside of them
  chartGroup.append("g")
    .call(leftAxis);

  chartGroup.append("g")
    .attr("transform", `translate(0, ${chartHeight})`)
    .call(bottomAxis);

    // Create one SVG rectangle per piece of tvData
  // Use the linear and band scales to position each rectangle within the chart
  chartGroup.selectAll(".bar")
  .data(crimeData)
  .enter()
  .append("rect")
  .attr("class", "bar")
  .attr("x", d => xBandScale(d.sex))
  .attr("y", d => yLinearScale(d.age))
  .attr("width", xBandScale.bandwidth())
  .attr("height", d => chartHeight - yLinearScale(d.age));

}).catch(function(error) {
console.log(error);
});
