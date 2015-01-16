$(document).ready(function() {
	var user = prompt('How many squares per side would you like?');
	var i = 1;
	var j = 1;
	var width = 600 / user - 2;
	var height = 600 / user - 2;

	while (i <= user) {
		$('table').append('<tr></tr>');
		i++;
	}
	while (j <= user) {
		$('tr').append('<td style="height:' + height + 'px; width:' + width + 'px;"></td>');
		j++;
	}
	
	$('td').hover(function() {
		$(this).addClass('highlight');
	});
	$('#button').click(function() {
		location.reload();
	});
});
