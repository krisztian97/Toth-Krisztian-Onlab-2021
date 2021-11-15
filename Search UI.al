page 50101 "Search"
{
    Caption = 'Complaint List';
    PageType = Worksheet;
    SourceTable = "Search Result";
    UsageCategory = Tasks;
    ApplicationArea = All;
    SourceTableTemporary = true;
    Editable = true;
    InsertAllowed = false;
    DeleteAllowed = false;
    layout
    {
        area(content)
        {
            Group(SearchGrp)
            {
                Caption = 'Search';
                /*                 field(Search; SearchTxt)
                                {
                                    Caption = 'Order No.';
                                    ApplicationArea = all;
                                    Editable = true;
                                    trigger OnValidate()
                                    var
                                        Mgt: Codeunit "Search Management";
                                    begin
                                        Mgt.Search(SearchTxt, "CustomerName", CustomerNumber, Rec);
                                    end;
                                } */
                field(Customer; CustomerName)
                {
                    ApplicationArea = All;
                    Caption = 'Customer Name';
                    Editable = true;
                    trigger OnValidate()
                    var
                    begin
                        Mgt.Search(SearchTxt, "CustomerName", CustomerNumber, Rec);
                    end;

                }
                field(CustomerNo; CustomerNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Customer No.';
                    Editable = true;
                    trigger OnValidate()
                    var
                    begin
                        Mgt.Search(SearchTxt, "CustomerName", CustomerNumber, Rec);
                    end;
                }

            }
            repeater(General)
            {
                field("Order No."; Rec."Order No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Item Desc."; Rec."Item Description")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Item Ledger Entry No."; Rec."ItemLedgerEntryNo")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Quantity"; Rec.Quantity)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Return Quantity"; Rec."Return Quantity")
                {
                    ApplicationArea = All;
                    Editable = true;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            group(Process)
            {
                action(Find)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Fi&nd';
                    Image = Find;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Apply a filter to search on this page.';

                    trigger OnAction()
                    begin
                        Mgt.Search(SearchTxt, "CustomerName", CustomerNumber, Rec);
                    end;
                }
                action(Delete)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Delete';
                    Image = Delete;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin
                        Rec.DeleteAll();
                    end;
                }
            }
        }

    }
    var
        SearchTxt: Text;
        "CustomerName": Text;
        CustomerNumber: Text;
        Mgt: Codeunit "Search Management";

}