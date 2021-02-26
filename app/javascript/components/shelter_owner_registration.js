
const createShelter = () => {
  const userType = document.querySelector("#user_user_type");
  const formGroup = document.querySelector(".user_user_type");

  userType.addEventListener("change", (event) => {
    if (userType.value === "Shelter") {
      formGroup.insertAdjacentHTML("afterend", '<div class="form-group shelter_name required user_shelter_name"><label class="shelter_name required" for="user_shelter_name">Shelter Name <abbr title="required">*</abbr></label><input class="form-control string shelter_name required" autocomplete="shelter_name" autofocus="autofocus" required="required" aria-required="true" type="shelter_name" value="" name="user[shelter_name]"id="user_shelter_name" /></div >');};
    })
}

export { createShelter }