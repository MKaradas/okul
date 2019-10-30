package javaapplication7;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.scene.control.Button;
import javafx.scene.layout.FlowPane;
import javafx.stage.Stage;
public class JavaApplication7 extends Application {

    
    public static void main(String[] args) {
       
    }

    @Override
    public void start(Stage stage) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
     primaryStage.setTitle("Event Example");
     FlowPane rootNode = new FlowPane();
     final Button button = new Button("my button"); 
        }
    button.setOnAction(new EventHandler<ActionEvent>() {
        public void handle(ActionEvent event)         { 
            button.setText("pressed"); }}); 
 
    rootNode.getChildren().add(button);     Scene scene = new Scene(rootNode);     primaryStage.setScene(scene);     primaryStage.show(); 
 
  }}

