<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
    <br>
    <div class='container'>
        <div class='row justify-content-center align-items-start'>
           <div class='col-md-5'>
                <h2>{{ title }}</h2>
           </div> 
        </div>
        <div class='row  justify-content-center align-start'>
            <div class='col-md-5'>
                <p>{{ post }}</p>
                <br>
                <div class='btn-toolbar' role='toolbar' aria-label='post view interaction buttons'> 
                    <div class='btn-group mr-2' role='group-1' aria-label='edit menu'>
                        <a class='btn btn-info' href='/post/{{ id }}/edit'><i class="fa fa-edit" style="font-size:24px"></i></a>
                        <a class='btn btn-danger' href='/post/{{ id }}/delete'><i style='font-size:24px; color: white;' class='fa'>&#xf014;</i></a>
                    </div>
                    <div class='btn-group mr-2' role='group-2' aria-label='back btn'>
                        <a class='btn btn-primary' href='/'>back</a>
                    </div>
                </div>
 
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
