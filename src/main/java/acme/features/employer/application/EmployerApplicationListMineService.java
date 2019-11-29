
package acme.features.employer.application;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.applications.Application;
import acme.entities.roles.Employer;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.services.AbstractListService;

@Service
public class EmployerApplicationListMineService implements AbstractListService<Employer, Application> {

	// Internal state --------------------------------------------------------------------------

	@Autowired
	EmployerApplicationRepository repository;


	// AbstractListService<Authenticated, Application> interface -------------------------------------

	@Override
	public boolean authorise(final Request<Application> request) {
		assert request != null;
		/*
		 * boolean result;
		 * int applicationId;
		 * Application application;
		 * Employer employer;
		 * Principal principal;
		 *
		 * applicationId = request.getModel().getInteger("id");
		 * application = this.repository.findOneByApplicationId(applicationId);
		 * employer = application.getJob().getEmployer();
		 * principal = request.getPrincipal();
		 * result = employer.getUserAccount().getId() == principal.getAccountId();
		 */

		return true;
	}

	@Override
	public void unbind(final Request<Application> request, final Application entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "reference", "moment", "status");
	}

	@Override
	public Collection<Application> findMany(final Request<Application> request) {
		assert request != null;

		Collection<Application> result;

		result = this.repository.findManyAll();

		return result;
	}

}
