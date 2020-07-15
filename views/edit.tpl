<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body> 
    <div class='container'>
    <div class='row justify-content-md-center align-items-center'>
    <div class='col-sm-5'>
    <form action='/post/{{ id }}/edit' method='post'>
        <div class='form-group'>
            <label class='h2' for='title'>Title</label><br>
            <input class='form-control' type='text' id='title' name='title' value='{{ title }}'> 
        </div>
        <div class='form-group'>
            <label class='h2' for='note'>Body</label><br>
            <textarea class='form-control' id='note' name='note' rows='5'>
                {{ note }}
            </textarea>
        </div>
        <div class='form-group'>
            <input class='btn btn-success' type='submit' value='submit'>
        </div>
    </form>
    </div>
    </div>
    <div class='row justify-content-md-center align-items-start'>
    <div class='col-sm-5'>
        <a class='btn btn-primary' href='/'>back</a>
    </div>
    </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
