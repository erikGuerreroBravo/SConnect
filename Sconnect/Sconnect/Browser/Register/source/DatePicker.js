$(document).ready(function () {
    $('#CalendarNacimiento').datepicker({

        bottonText: 'Calendar',
        numbreOfMonths: 2,
        changeMonth: true,
        changeYear: true,
        mindDate: new Date(1990, 1, 1),
        maxDate: new Date(2000, 11, 31)


    });
});