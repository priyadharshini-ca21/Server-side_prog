<html>
 <body>
  <h2>Great Numbers via JavaScript AJAX</h2>
   <input type="number" id="n1">
   <input type="number" id="n2">
   <input type="number" id="n3">
   <button onclick="GreatNumbers()"> Check </button>
  <div id="result">The result will be displayed here without page reload</div>
 </body>
</html>



<script>
  function GreatNumbers() {
  var data="n1="+document.getElementById("n1").value + "&n2="+document.getElementById("n2").value + "&n3="+document.getElementById("n3").value;
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function() {
     document.getElementById("result").innerHTML = this.responseText;
  }
  xhttp.open("POST", "add.do");
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send(data);
}
</script>
