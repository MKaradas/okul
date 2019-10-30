package javaapplication9;
import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.control.Button;
import javafx.scene.layout.HBox;
import javafx.scene.control.RadioButton;
import javafx.scene.control.ToggleGroup;
import javafx.scene.c
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.layout.FlowPane;
import javafx.scene.control.Label;
import javafx.scene.control.Tooltip;
public class JavaApplication9 extends Application {
   
    public static void main(String[] args) {
        launch(args);
    }

    public void start(Stage primaryStage) {
       RadioButton oddButton = new RadioButton("odd");
RadioButton evenButton = new RadioButton("even"); 
RadioButton erkek = new RadioButton("erkek");
RadioButton kadin = new RadioButton("kadin"); 
final Label label = new Label(); 

ToggleGroup group1 = new ToggleGroup(); 
ToggleGroup group2 = new ToggleGroup(); 
        
oddButton.setToggleGroup(group1); 
evenButton.setToggleGroup(group1); 

erkek.setToggleGroup(group2); 
kadin.setToggleGroup(group2); 

group1.selectToggle(oddButton);
group2.selectToggle(erkek);
ChangeListener<Toggle> chng = new ChangeListener<Toggle>() { 
    public void changed(ObservableValue v, Toggle oldValue, Toggle newValue) { 
      label.setText("Selected button is " + ((RadioButton) group1.getSelectedToggle()).getText() + " ve "+ ((RadioButton) group2.getSelectedToggle()).getText()); 
        }  };
group1.selectedToggleProperty().addListener( chng );
group2.selectedToggleProperty().addListener( chng );
         
VBox root = new VBox();
root.getChildren().addAll(oddButton, evenButton);
root.getChildren().addAll(erkek, kadin, label);
Scene sc = new Scene(root);
primaryStage.setScene(sc);
primaryStage.show();


        

    }

    public void init() {
        
    }

}
