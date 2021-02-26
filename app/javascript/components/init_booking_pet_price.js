
const initBookingPetPrice = () => {
  const bookingPetPrice = document.querySelector('.booking-pet-price');
  const displayPrice = document.querySelector('.displayPrice');

  if (bookingPetPrice) {

    const bookingForm = document.querySelector('#new_reservation')

    bookingForm.addEventListener('change', (event) => {  // Calculates total price, only after picking dates
      const price = +bookingPetPrice.dataset.petPrice;
      const startYear = document.querySelector('#reservation_start_date_1i').value;
      const startMonth = document.querySelector('#reservation_start_date_2i').value;
      const startDay = document.querySelector('#reservation_start_date_3i').value;
      const endYear = document.querySelector('#reservation_end_date_1i').value;
      const endMonth = document.querySelector('#reservation_end_date_2i').value;
      const endDay = document.querySelector('#reservation_end_date_3i').value;
      const submitButton = document.querySelector('#new_reservation input[type=submit]');

      const startDate = Date.parse(`${startYear}/${startMonth}/${startDay}`);
      const endDate = Date.parse(`${endYear}/${endMonth}/${endDay}`);
      const totalDays = (endDate - startDate) / (1000 * 60 * 60 * 24); // Convert from milliseconds to days.
      const reservationPrice = document.querySelector('#reservation_total_price');
      const alertelement = document.querySelector('.text-alert');

      if (totalDays > 0) {
        alertelement.innerText = ''
        submitButton.disabled = false;
        const totalPrice = Math.round(totalDays * price);
        displayPrice.innerText = `Total: ${totalPrice}$` // Display the price on reservation/new.
        reservationPrice.value = totalPrice; // Sets Reservation instance price.
      } else if (totalDays === 0) {
        alertelement.innerText = `The minimum period for a reservation is one day!!`;
        displayPrice.innerText = 'Total:'
        submitButton.disabled = true;
      } else {
        alertelement.innerText = `Start date must be earlier than end date!!`;
        displayPrice.innerText = 'Total:'
        submitButton.disabled = true;
      }
    })
  }
} 

export { initBookingPetPrice }