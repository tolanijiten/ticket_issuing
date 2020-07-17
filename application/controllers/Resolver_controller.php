<?php
class Resolver_controller extends CI_Controller 
{  
    public function index()
    {
//        $this->load->model->("Resolver_model");
////        $this->Resolver_model->check_issue_approve();
        $this->session->set_flashdata('issue_solve_approved','issue');
        $this->load->model("Resolver_model");
//        $this->Resolver_model->urgent_ticket();
        $this->load->view("Resolver/resolver_home");
    }
    
    public function view_ticket($id)
    {
        $this->load->model('Resolver_model');
        $result=$this->Resolver_model->open_ticket($id);
        $this->load->view('Resolver/view_ticket',['result'=>$result[0]]);
    }
    
    public function accept_ticket($ticket_id)
    {
        $this->load->model('Resolver_model');
        $result=$this->Resolver_model->accept_ticket($ticket_id);
        if($result == "0")
        {
            $this->session->set_flashdata('ticekt_accept_fail','failed');
            $this->load->view("Resolver/view_ticket");
        }
        else
        {
            $resolver_detail=$this->Resolver_model->get_resolver_details();
            $this->Resolver_model->update_resolver_details($resolver_detail);
            echo "done";
            $this->session->set_flashdata("ticket_accpted","ticket_accpted");
            redirect("Resolver_controller/current_issue");
            
        }
    }
    
    public function profile()
    {
        $this->load->model('Resolver_model');
        $user_details=$this->Resolver_model->resolver_user_details();
        $reolver_detalis=$this->Resolver_model->get_resolver_details();
        $this->load->view("Resolver/profile",['user_details'=>$user_details,'resolver_details'=>$reolver_detalis]);
    }
    
    
    public function current_issue()
    {
        $this->load->model('Resolver_model');
        $details = $this->Resolver_model->accepted_ticket_details();
        $this->data['resolver'] = $this->Resolver_model->accepted_ticket_details();
        $this->load->view("Resolver/resolver_current_issues",$this->data);   
    }
    
    public function ticket_solved($ticket_id)
    {
        $this->load->model("Resolver_model");
        $this->Resolver_model->update_ticket_status($ticket_id,2);
        $this->session->set_flashdata('ticket_solved','ticket_solved');
        redirect("Resolver_controller/current_issue");
        
    }
}
?>