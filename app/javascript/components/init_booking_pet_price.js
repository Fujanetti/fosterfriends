

const initBookingPetPrice = () => {
  const bookingPetPrice = document.querySelector('.booking-pet-price');
  const displayPrice = document.querySelector('.displayPrice');

  if (bookingPetPrice) {

    const bookingForm = document.querySelector('#new_reservation')

    bookingForm.addEventListener('change', (event) => {
      const price = +bookingPetPrice.dataset.petPrice;
      console.log(price);
      const startYear = document.querySelector('#reservation_start_date_1i').value;
      const startMoth = document.querySelector('#reservation_start_date_2i').value;
      const startDay = document.querySelector('#reservation_start_date_3i').value;
      const endYear = document.querySelector('#reservation_end_date_1i').value;
      const endMoth = document.querySelector('#reservation_end_date_2i').value;
      const endDay = document.querySelector('#reservation_end_date_3i').value;
      console.log(startYear)

      const startDate = Date.parse(`${startYear}/${startMoth}/${startDay}`);
      const endDate = Date.parse(`${endYear}/${endMoth}/${endDay}`);
      const totalDays = (endDate - startDate) / (1000 * 60 * 60 * 24); // Convert from milliseconds to days

      console.log(startDate)
      console.log(endDate)
      console.log(totalDays)
      const totalPrice = totalDays * price;
      console.log(totalPrice);
      displayPrice.innerText = `Total: ${totalPrice}$`
      const reservationPrice = document.querySelector('#reservation_total_price');
      reservationPrice.value = totalPrice;

  })

  }
} 

export { initBookingPetPrice }