//= require jquery3
//= require popper
//= require bootstrap-sprockets

document.getElementById('search_tmdb_form').attachEvent('onsubmit', (evt) => {
    document.getElementById('search_').value = 'heloo'
    evt.preventDefault();
    var body = document.getElementById('search_result')
    var tbl = document.createElement('table');
    tbl.style.width = '100%';
    tbl.setAttribute('border', '1');
    var tbdy = document.createElement('tbody');
    for (var i = 0; i < 3; i++) {
        var tr = document.createElement('tr');
        for (var j = 0; j < 2; j++) {
        if (i == 2 && j == 1) {
            break
        } else {
            var td = document.createElement('td');
            td.appendChild(document.createTextNode('\u0020'))
            i == 1 && j == 1 ? td.setAttribute('rowSpan', '2') : null;
            tr.appendChild(td)
        }
        }
        tbdy.appendChild(tr);
    }
    tbl.appendChild(tbdy);
    body.appendChild(tbl);
});

document.getElementById('search_').addEventListener('onclick', () => {
    document.getElementById('search_').value = 'heloo'
})