<%-- 
    Document   : footer
    Created on : 05 10, 21, 10:20:54 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
            </div>
            <!-- .container-fluid-->
        </section>
            <!-- ./content-->
    </div>
    <!-- ./content-wrapper -->
    
<footer class="main-footer layout-footer-fixed">
    <!-- To the right -->
    <div class="float-right d-none d-sm-block">
     All Rights reserved 
    </div>
    <strong>3C's Grocery Repository</strong>
    <!-- Default to the left -->
    
  </footer>

</div>
<!-- ./wrapper -->
</body>
<script src="https://kit.fontawesome.com/5a92b2915b.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="resources/js/bootstrap.min.js"></script> 
<script src="resources/js/adminlte.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.2.1/chart.min.js" integrity="sha512-tOcHADT+YGCQqH7YO99uJdko6L8Qk5oudLN6sCeI4BQnpENq6riR6x9Im+SGzhXpgooKBRkPsget4EOoH5jNCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
    $(document).ready( function () {
    $('#product_table').DataTable({
        "paging": true,
        "responsive": true,
      "autoWidth": true,
      columnDefs: [
    {
        targets: -1,
        className: 'dt-body-center'
    }
  ]
    });
} );
</script>    
<script>$(function () {
  $('[data-toggle="tooltip"]').tooltip();
});
</script>
<script>
$(function () {
  $('#confirmdel').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
});
</script>
<script> 
    ////-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
    var donutData        = {
      labels: [
          'Health & Beauty', 
          'Frozen Goods',
          'Household and Laundry', 
          'Beverages', 
          'Food Cupboard', 
           
      ],
      datasets: [
        {
          data: [700,500,400,600,300],
          backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc'],
        }
      ]
    }
    var pieOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    var pieChart = new Chart(pieChartCanvas, {
      type: 'pie',
      data: donutData,
      options: pieOptions      
    });
</script>
<script type="text/javascript">
function alertName(){
alert("Form has been submitted");
}; 

</script> 
<script> 
  $(function () {
  $('[data-toggle="popover"]').popover()
})  
    </script>
</html>


