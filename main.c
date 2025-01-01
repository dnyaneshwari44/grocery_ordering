#include<stdio.h>
#include<stdlib.h>
struct node
{
    int data;
    struct node *link;
}*top=NULL,*new_node,*temp;
int ele,ch;
void push()
{
    new_node=malloc(sizeof(struct node));
    printf("\nEnter Element TO be added :");
    scanf("%d",&ele);
    new_node->data=ele;
    new_node->link=NULL;
    if(top==NULL)
    {
        top=new_node;
        
    }
    else
    {
        new_node->link=top;
        top=new_node;
    }
}
void pop()
{
    if(top==NULL)
    {
        printf("STACK IS UNDERFLOW !!!");
    }
    else
    {
        temp=top;
        top=top->link;
        free(temp);
        temp->link=NULL;
    }
}
void dis()
{
    if(top==NULL)
    {
        printf("STACK IS UNDERFLOW !!!");
    }
    else
    {
        temp=top;
        while(temp)
        {
            printf("%d\t\t",temp->data);
            temp=temp->link;
        }
    }
}
int main()
{
    while(1)
    
    {
        printf("\n1.PUSH\n2.POP\n3.TRAVERSE\n4.EXIT");
        printf("\nEnter Your Choice");
        scanf("%d",&ch);
        
        switch(ch)
        {
            case 1:
            push();
            break;
            case 2:
            pop();
            break;
            case 3:
            dis();
            break;
            case 4:
            exit(0);
            break;
            
        }
    }
    return 0;
}