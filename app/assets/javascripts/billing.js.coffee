$ ->
  $("#payment-form").submit (event)->
    $('.submit-button').attr("disabled", "disabled")
    Stripe.createToken({
      number: $('#card-number').val()
      cvc: $('#card-cvc').val()
      exp_month: $('#card-expiry-month').val()
      exp_year: $('#card-expiry-year').val()
    }, stripeResponseHandler)
    return false

  stripeResponseHandler = (status, response) ->
    $('.submit-button').removeAttr('disabled')
    if response.error
      $('.payment-errors').text(response.error.message)
    else
      form$ = $('#payment-form')
      token = response['id']
      form$.append('<input type="hidden" name="stripeToken" value="' + token + '"/>')
      form$.get(0).submit()
