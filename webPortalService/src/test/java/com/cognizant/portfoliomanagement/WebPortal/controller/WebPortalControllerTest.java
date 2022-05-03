package com.cognizant.portfoliomanagement.WebPortal.controller;

 

import static org.junit.Assert.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import com.cognizant.portfoliomanagement.WebPortal.Controller.WebPortalController;
import com.cognizant.portfoliomanagement.WebPortal.FeignClient.AuthClient;
import com.cognizant.portfoliomanagement.WebPortal.service.WebportalService;



@AutoConfigureMockMvc
@SpringBootTest
class WebPortalControllerTest {
    @Autowired
    private WebPortalController controller;

    @Mock
	private AuthClient authClient;

    @Mock
    private WebportalService service;
    	
    @Autowired
    private MockMvc mvc;
    
    @Test
    void contextLoads() {
       assertNotNull(controller);
   }
	
    @Test
    void testGetLogoutTokenValid() throws Exception {
    	when(service.isSessionValid("token")).thenReturn(true);
    	ResultActions resultActions = mvc.perform(get("/logout").sessionAttr("token", "token"));
    	resultActions.andExpect(status().isOk());
    }

    
    @Test
    public void testGetLogin() throws Exception {
        ResultActions actions = mvc.perform(get("/"));
        actions.andExpect(status().isOk());
    }

    @Test
    void testGetLoginTokenValid() throws Exception {
    	when(service.isSessionValid("token")).thenReturn(true);
    	ResultActions resultActions = mvc.perform(get("/").sessionAttr("token", "token"));
    	resultActions.andExpect(status().isOk());
    }
    
    @Test
    void testGetHomePage() throws Exception {
    	when(service.isSessionValid("token")).thenReturn(true);
    	ResultActions resultActions = mvc.perform(get("/Home").sessionAttr("token", "token"));
    	resultActions.andExpect(status().isOk());
    }
    
    @Test
    void testGetHomePageTokenInvalid() throws Exception {
    	when(service.isSessionValid("token")).thenReturn(false);
    	ResultActions resultActions = mvc.perform(get("/Home").sessionAttr("token", "token"));
    	resultActions.andExpect(status().isOk());
    }
    
    @Test
    void testshowSupplyPage() throws Exception {
    	when(service.isSessionValid("token")).thenReturn(true);
    	ResultActions resultActions = mvc.perform(get("/sellAssets").sessionAttr("token", "token"));
    	resultActions.andExpect(status().isOk());
    }
    @Test
    void testshowSupplyPageTokenInvalid() throws Exception {
    	when(service.isSessionValid("token")).thenReturn(false);
    	ResultActions resultActions = mvc.perform(get("/sellAssets").sessionAttr("token", "token"));
    	resultActions.andExpect(status().isOk());
    }
    
    @Test
    void testshowNetworth() throws Exception {
    	when(service.isSessionValid("token")).thenReturn(true);
    	ResultActions resultActions = mvc.perform(get("/viewNetworth").sessionAttr("token", "token"));
    	resultActions.andExpect(status().isOk());
    }
  
}
 