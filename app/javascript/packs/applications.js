// Cookieyum Rails
import CookieController from "../controllers/cookie_controller";

const application = Application.start();
application.register("cookie", CookieController);
