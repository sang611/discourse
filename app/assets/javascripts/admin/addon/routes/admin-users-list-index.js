import DiscourseRoute from "discourse/routes/discourse";

export default DiscourseRoute.extend({
  beforeModel() {
    this.transitionTo("adminUsersList.show", "active");
  },
});
