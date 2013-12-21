package health.utility;

import java.sql.Connection;

import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.el.ValueExpression;
import javax.faces.application.Application;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;

@RequestScoped
public abstract class AbstractBacking {

	public Connection getConnect() {
		FacesContext context = FacesContext.getCurrentInstance();
		ELContext elcontext = context.getELContext();
		Application application = context.getApplication();
		ExpressionFactory expressionFactory = application.getExpressionFactory();
		ValueExpression ve = expressionFactory.createValueExpression(elcontext,
				"#{connector}", Connector.class);
		Connector dbConnector = (Connector) ve.getValue(elcontext);
		Connection conn = dbConnector.getDbConnection();
		return conn;
	}
}
