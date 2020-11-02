<html lang="en">
<head>
  <title>Student Ajax Insert</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <meta name="_token" content="{{ csrf_token() }}">
</head>
<body>

<section style="padding-top:6rem;">
     <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                Students
                <a href="" class="btn btn-success float-right" data-toggle="modal" data-target="#StudentModal">Add New Student</a>
                <a href="#" class="btn btn-danger float-right mr-1" id="deleteAllSelectedRecord">Delete Selected</a>
              </div>
              <div class="card-body">
                <table id="studentTable" class="table">
                  <thead>
                    <tr>
                      <th><input type="checkbox" id="chkCheckAll"/></th>
                      <th>ID</th>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Department</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                      @foreach($students as $stu)
                      <tr id="sid{{$stu->id}}">
                        <td><input type="checkbox" name="ids" class="checkBoxClass" value="{{$stu->id}}"/></td>
                        <td>{{ $stu->id }}</td>
                        <td>{{ $stu->name }}</td>
                        <td>{{ $stu->email }}</td>
                        <td>{{ $stu->phone }}</td>
                        <td>{{ $stu->department }}</td>
                        <td>
                          <a href="javascript:void(0)" onclick="editStudent({{$stu->id}})" class="btn btn-info">Edit</a>
                          <a href="javascript:void(0)" onclick="deleteStudent({{$stu->id}})" class="btn btn-danger">Delete</a>
                        </td>
                      </tr>
                      @endforeach
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
     </div>
</section>

<!-- Modal Insert -->
<div class="modal fade" id="StudentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Add New Student</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="studentForm">
          @csrf
          <div class="form-group">
              <label for="name">Name:</label>
              <input type="text" name="name" class="form-control" id="name">
          </div>
          <div class="form-group">
              <label for="email">Email:</label>
              <input type="email" name="email" class="form-control" id="email">
          </div>
          <div class="form-group">
              <label for="phone">Phone:</label>
              <input type="number" name="phone" class="form-control"id="phone">
          </div>
          <div class="form-group">
              <label for="department">Department:</label>
              <input type="text" name="department" class="form-control" id="department">
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
      <!-- <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div> -->
    </div>
  </div>
</div>

<!-- Modal Edit-->
<div class="modal fade" id="studentEditModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Edit Student</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="studentEditForm">
          @csrf
          <input type="hidden" name="id" id="id">
          <div class="form-group">
              <label for="name">Name:</label>
              <input type="text" class="form-control" id="name2">
          </div>
          <div class="form-group">
              <label for="email">Email:</label>
              <input type="email" class="form-control" id="email2">
          </div>
          <div class="form-group">
              <label for="phone">Phone:</label>
              <input type="number" class="form-control"id="phone2">
          </div>
          <div class="form-group">
              <label for="department">Department:</label>
              <input type="text" class="form-control" id="department2">
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
      <!-- <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div> -->
    </div>
  </div>
</div>
<script>
      $("#studentForm").submit(function(e){
          e.preventDefault();

          let name = $("#name").val();
          let email = $("#email").val();
          let phone = $("#phone").val();
          let department = $("#department").val();
          var _token = $('meta[name="_token"]').attr('content');

          $.ajax({
            url: "{{ route('student.add') }}",
            type: "POST",
            data: {
              name:name,
              email:email,
              phone:phone,
              department:department,
              _token:_token
            },
            success:function(response)
            {
              if(response)
              {
                $("#studentTable tbody").prepend('<tr><td>'+ response.name +'</td><td>'+ response.email +'</td><td>'+ response.phone + '</td><td>'+ response.department +'</td></tr>');
                $("#studentForm")[0].reset();
                $("#StudentModal").modal('hide');
              }
            }
          });
      });
</script>
<script>
    function editStudent(id)
    {
        $.get('/students/'+id,function(student){
            $("#id").val(student.id);
            $("#name2").val(student.name);
            $("#email2").val(student.email);
            $("#phone2").val(student.phone);
            $("#department2").val(student.department);
            $("#studentEditModal").modal('toggle');
        })
    }

    $("#studentEditForm").submit(function(e){
        e.preventDefault();
        let id = $("#id").val();
        let name = $("#name2").val();
        let email = $("#email2").val();
        let phone = $("#phone2").val();
        let department = $("#department2").val();
        var _token = $("input[name=_token]").val();

        $.ajax({
          url: "{{ route('student.update') }}",
          type: "PUT",
          data: {
              id:id,
              name:name,
              email:email,
              phone:phone,
              department:department,
              _token:_token
          },
          success:function(response)
          {
            if(response)
            {
              $('#sid'+ response.id +' td:nth-child(1)').text(response.id);
              $('#sid'+ response.id +' td:nth-child(2)').text(response.name);
              $('#sid'+ response.id +' td:nth-child(3)').text(response.email);
              $('#sid'+ response.id +' td:nth-child(4)').text(response.phone);
              $('#sid'+ response.id +' td:nth-child(5)').text(response.department);
              $("#studentEditModal").modal('toggle');
              $("#studentEditForm")[0].reset();
            }
          }
        });
    });
</script>

<script>
    function deleteStudent(id)
    {

        if(confirm("Do you really want to delete this record?"))
        {
            var _token = $("input[name=_token]").val();
            $.ajax({
                url:'/students/'+id,
                type:'DELETE',
                data:{
                  _token:_token
                },
                success:function(response)
                {
                   $("#sid"+id).remove();
                }
            });
        }
    }
</script>
<script>
    $(function(e){

      $("#chkCheckAll").click(function(){
        $(".checkBoxClass").prop('checked',$(this).prop('checked'))
      })

      $("#deleteAllSelectedRecord").click(function(e){
          e.preventDefault();

          var allids = [];

          $("input:checkbox[name=ids]:checked").each(function(){
              allids.push($(this).val());
          });

          $.ajax({
            url:"{{route('student.deleteSelected')}}",
            type:'DELETE',
            data:{
              _token:$("input[name=_token]").val(),
              ids:allids
            },
            success:function(response)
            {
               $.each(allids,function(key,val){
                 $("#ids"+val).remove();
               })
            }
          });
      })

    });
</script>
</body>
</html>
