<!-- BEGIN: main -->
<div class="weather_block">
    <style scoped>
        .weather_block h3 {
            font-weight: bold;
            font-size: 14px;
            text-align: center;
        }
        .weather_block table {
            width: 100%;
            border-collapse: collapse;
        }
        .weather_block th, .weather_block td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .weather_block .temperature {
            font-size: 12px;
            font-weight: bold;
        }
    </style>
    <h3>Dự báo thời tiết</h3>
        <!-- BEGIN: loop -->
        <div class="col">
            <div class="custom-card mb-4 mt-5">
                <div class="custom-card-header text-center">
                    {WEATHER.city_name}
                </div>
                <div class="custom-card-body">
                    <h5 class="text-center">{WEATHER.date_forecast} - {WEATHER.time_period}</h5>
                    <p class="text-center">
                        <img src="{WEATHER.avatar}" width="70px" height="70px" alt="{WEATHER.city_name}" class="img-thumbnail"><br>
                        Mô tả: {WEATHER.description}<br>
                        Tốc độ gió: {WEATHER.wind_speed} km/h<br>
                        Ghi chú nhiệt độ: {WEATHER.temperature_note}<br>
                        Giá trị nhiệt độ: {WEATHER.temperature_value}&deg;C
                    </p>
                </div>
            </div>
        </div>
        <!-- END: loop -->
        </tbody>
    </table>
</div>
<!-- END: main -->
