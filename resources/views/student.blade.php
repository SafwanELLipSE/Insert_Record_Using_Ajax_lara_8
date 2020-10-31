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
                Students <a href="" class="btn btn-success float-right" data-toggle="modal" data-target="#StudentModal">Add New Student</a>
              </div>
              <div class="card-body">
                <table id="studentTable" class="table">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Department</th>
                    </tr>
                  </thead>
                  <tbody>
                      @foreach($students as $stu)
                      <tr>
                        <td>{{ $stu->id }}</td>
                        <td>{{ $stu->name }}</td>
                        <td>{{ $stu->email }}</td>
                        <td>{{ $stu->phone }}</td>
                        <td>{{ $stu->department }}</td>
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

<!-- Modal -->
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
                // $("#studentTable tbody").prepend('<tr><td>'+ response.name +'</td><td>'+ response.email +'</td><td>'+ response.phone + '</td><td>'+ response.department +'</td></tr>');
                $("#studentForm")[0].reset();
                $("#StudentModal").modal('hide');
              }
            }
          });
      });
</script>
</body>
</html>
