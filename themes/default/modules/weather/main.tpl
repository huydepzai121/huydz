<!-- BEGIN: main -->

<h1 class="text-center mb-5">Dự báo thời tiết</h1>
<div class="d-flex justify-content-end mb-5 text-center">
    <form class="form-inline" method="post" action="">
        <select class="form-control" name="id_city">
            <!-- BEGIN: city_loop -->
            <option value="{CITY.name}" {CITY.selected}>{CITY.name}</option>
            <!-- END: city_loop -->
        </select>
        <button class="btn btn-outline-success" type="submit" name="submit">Tìm kiếm</button>
    </form>
</div>

<!-- Dự báo thời tiết -->
<div class="row justify-content-center mb-5">
    <!-- BEGIN: loop -->
    <div class="col">
        <div class="custom-card mb-4 mt-5">
            <div class="custom-card-header text-center">
                {WEATHER.name}
            </div>
            <div class="custom-card-body">
                <h5 class="text-center">{WEATHER.date_forecast} - {WEATHER.time_period}</h5>
                <p class="text-center">
                    <img src="{WEATHER.avatar}" width="70px" height="70px" alt="Avatar" class="img-thumbnail"><br>
                    Mô tả:  {WEATHER.description}<br>
                    Tốc độ gió: {WEATHER.wind_speed} km/h<br>
                    Ghi chú nhiệt độ: {WEATHER.temperature_note}<br>
                    Giá trị nhiệt độ: {WEATHER.temperature_value}°C
                </p>
            </div>
        </div>
    </div>
    <!-- END: loop -->
</div>

<!-- Phần hiển thị phân trang -->
<nav aria-label="Page navigation" class="text-center" >
    <ul class="pagination">
        <!-- Vòng lặp hiển thị các trang -->
        <!-- BEGIN: page_loop -->
        <li class="page-item {PAGE.current}"><a class="page-link" href="{PAGE.link}">{PAGE.num}</a></li>
        <!-- END: page_loop -->
    </ul>
</nav>
<style>
    .custom-card-header {
        background-color: #4CAF50; /* Green background for header */
        color: white;
        border-bottom: 2px solid #ddd;
        padding: 10px;
    }

    .custom-card {
        border: 2px solid #ddd; /* Solid border for the card */
        border-radius: 5px;
        background-color: #f7f7f7; /* Light grey background for card */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .custom-card-body {
        padding: 20px;
    }

    .pagination .page-item.active .page-link {
        background-color: #4CAF50;
        border-color: #4CAF50;
    }

    .pagination .page-link {
        color: #4CAF50;
    }

    .pagination .page-link:hover {
        background-color: #4CAF50;
        color: white;
    }

    .pagination .page-item.disabled .page-link {
        color: #ccc;
    }
    /* Tăng khoảng cách ở dưới tiêu đề */
    h1.text-center {
        margin-bottom: 40px;
    }

    /* Điều chỉnh khoảng cách của form tìm kiếm */
    .form-inline {
        margin-bottom: 30px;
    }

    /* Khung tìm kiếm và nút tìm kiếm */
    .form-control {
        margin-right: 10px;
    }

    .btn-outline-success {
        margin-top: 5px;
        margin-right: 5px;
    }

    /* Điều chỉnh khoảng cách cho card dự báo */
    .custom-card {
        margin-top: 30px;
        margin-bottom: 30px;
    }

    .custom-card-header {
        padding: 15px;
    }

    .custom-card-body {
        padding: 25px;
    }

    /* Điều chỉnh khoảng cách cho phần phân trang */
    .pagination {
        margin-top: 40px;
    }

    .page-item {
        margin-right: 5px;
    }
</style>
<!-- END: main -->
