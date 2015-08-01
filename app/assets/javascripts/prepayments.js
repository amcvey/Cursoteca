$(document).on('ready page:load page:change', function() {
	accounting.settings.currency.decimal =',';
	accounting.settings.currency.thousand ='.';
	accounting.settings.currency.precision = 0;
	var price = $('.js-price').text();
	var total_price = $('.js-total-price');
	price = price.replace('$', '');
	var count = 1;
	
	$('.js-seats').change(function(event) {
		var seats = $(this).val();
		total = seats * price;
		total = accounting.formatMoney(total);
		total_price.text(total);

		while(count <= seats) {
			$('#seat'+ count).css('display','block');
			count++;
		}
		while(count > seats) {
			$('#seat'+ count).css('display','none');
			count--;
		}
	});
});