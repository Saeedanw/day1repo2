package org.kp.services.tests;

import static org.junit.Assert.assertTrue;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;
//import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;


import org.testng.annotations.Parameters;
import org.testng.annotations.Test;



public class TestRunner{
	

	@Test(groups = { "Runner1" })
	@Parameters({ "Parallel","env" })
	public void testParallel(int a,String s) {
	Results results = Runner.path("classpath:feature/").tags("@version=1.1").parallel(a);
	System.out.println("Running Successfully");
	assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
	System.out.printf(" karate results output path = " + results.getReportDir() + "\n");
	generateReport(results.getReportDir());
	//generateReport(results1.getReportDir());
	}
	public static void generateReport(String karateOutputPath) {
	System.out.printf(" karateOutputPath = " + karateOutputPath + "\n");
	Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
	final List<String> jsonPaths = new ArrayList<String>(jsonFiles.size());
	jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
	Configuration config = new Configuration(new File("target"), "feature");
	ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
	reportBuilder.generateReports();
	 
			
	}
	


}