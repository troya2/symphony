class NodesController < InheritedResources::Base

  private

    def node_params
      params.require(:node).permit(:name, :city, :state, :description)
    end

end
