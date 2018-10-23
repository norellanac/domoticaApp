<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript" src="jquery-1.12.0.min.js"></script>
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/Chart.bundle.min.js"></script>
<script type="text/javascript">
        $(document).ready(function(){
                var datos = {
                        type: "pie",
            data: {
                datasets: [{
                        data: [
                            5,
                            10,
                            40,
                            12,
                            23,
                        ],
                        backgroundColor: [
                            "#F7464A",
                            "#46BFBD",
                            "#FDB45C",
                            "#949FB1",
                            "#4D5360",
                        ],
                    }],
                labels: [
                    "Datos 1",
                    "Datos 2",
                    "Datos 3",
                    "Datos 4",
                    "Datos 5",
                ]
            },
            options: {
                responsive: true,
            }
        };

        var canvas = document.getElementById('chart').getContext('2d');
        window.pie = new Chart(canvas, datos);

        setInterval(function () {
            datos.data.datasets.splice(0);
            var newData = {
                backgroundColor: [
                    "#F7464A",
                    "#46BFBD",
                    "#FDB45C",
                    "#949FB1",
                    "#4D5360",
                ],
                data: [getRandom(), getRandom(), getRandom(), getRandom(), getRandom()]
            };

            datos.data.datasets.push(newData);

            window.pie.update();

        }, 5000);



        function getRandom() {
            return Math.round(Math.random() * 100);
        }


    });
</script>
</head>
<body>
    <div id="canvas-container" style="width:50%;">
        <canvas id="chart" width="500" height="350"></canvas>
    </div>