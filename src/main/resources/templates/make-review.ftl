<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">

    <title>Write a review</title>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light sticky-top"
     style="background-color: #FFE3F5 ">
    <a href="/client/menu" class="navbar-brand">
        <img src="https://image.freepik.com/free-vector/_53876-43323.jpg" width="30" height="30" alt="logo">
    </a>
    <a href="/client/appointments" class="navbar-brand letter"
       style="color: deeppink; font-size:11pt">My appointments</a>
    <a href="/client/make-appointment" class="navbar-brand letter"
       style="color: deeppink; font-size:11pt" >Make an appointment</a>
    <a href="/client/procedures" class="navbar-brand letter"
       style="color: deeppink; font-size:11pt" >Procedures</a>
    <a href="/client/reviews" class="navbar-brand letter"
       style="color: deeppink; font-size:11pt" >Write a review</a>
    <form method="post" action="/logout">
        <input type="hidden"  name="_csrf" value="${_csrf.token}" />
        <p align="center"><button class="btn btn-success" style="background-color: #FFA9EB" type="submit">
            Logout
        </button>
        </p>
    </form>
</nav>
<br>
<form method="post" action="/client/make-review">
    <p align="center" style="color: deeppink"> Choose master
    <#--<fmt:message key="choose.master"/><br>-->
        <select id="masterId" name="masterId"
                style="font-size: 11pt; background-color: #FFE3F5; color: deeppink" required>
            <#list masters as m>
                <option value="${m.id}">${m.surnameEn}</option>
            </#list>
        </select>
        <br><br>
        <input type="text" required placeholder="text" name="text"><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button class="btn btn-success" style="background-color: #FFA9EB" type="submit">Send</button>
    </p>
</form>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous">
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous">
</script>
</body>
</html>